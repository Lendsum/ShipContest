using Duality;
using naves.Almirants;
using PIDController;
using System;
using System.Linq;

namespace naves
{
    public class LucioCommander : ICommander
    {
        private bool IsAttacShip = LucioAlmirant.IsAttac;

        private FinalPidController turnPidController;

        private PIDConfiguration Configuration1 = new PIDConfiguration(200f, 0.001f, 25f); //...Minimized
        private PIDConfiguration Configuration2 = new PIDConfiguration(170f, 0.001f, 6.35f); //...Maximized

        private float pi = (float)Math.PI;
        private bool onInit = true;

        float targetAngle;
        RadarPoint targetPosition;
        DateTime start;

        Vector2 verticalDirection = new Vector2 { X = 0, Y = -1 };

        public LucioCommander()
        {
            turnPidController = new FinalPidController(Configuration2, 1);
        }

        /// <summary>
        /// Gets or sets the name.
        /// </summary>
        /// <value>
        /// The name.
        /// </value>
        public string Name
        {
            get { return "Lucio"; }
            set { }
        }

        public void Refresh(RadarSystem radar, PowerSystem power, NavigationSystem navigation)
        {
            if (IsAttacShip)
            {
                AttackEnemiesAlmirant(radar, power, navigation);
            }
            else
            {
                if (LucioAlmirant.EnemisAlmirant != null)
                {
                    GoToEnemisAlmirant(radar, power, navigation);
                }
                else
                {
                    DefendLucioAlmirant(radar, power, navigation);
                }
            }
        }

        private void AttackEnemiesAlmirant(RadarSystem radar, PowerSystem power, NavigationSystem navigation)
        {
            if (LucioAlmirant.EnemisAlmirant != null)
            {
                GoToEnemisAlmirant(radar, power, navigation);
            }
            else
            {
                //power.Acelerate(30);
                SearchEnemisAlmirant(radar, power, navigation);
            }
        }

        private void DefendLucioAlmirant(RadarSystem radar, PowerSystem power, NavigationSystem navigation)
        {
            var currentAngle = navigation.Angle;
            var currentPosition = navigation.Position;

            if (radar.Enemies.Any() &&
                !radar.Enemies.All(x => x.Position.X == 0 && x.Position.Y == 0) &&
                radar.Enemies.Any(x => x.Position.X != 0 && x.Position.Y != 0 &&
                Math.Abs(x.Position.X - currentPosition.X) < 400 &&
                Math.Abs(x.Position.Y - currentPosition.Y) < 400))
            {
                var target = radar.Enemies.First(x => x.Position.X != 0 && x.Position.Y != 0 && Math.Abs(x.Position.X - currentPosition.X) < 400 && Math.Abs(x.Position.Y - currentPosition.Y) < 400);

                targetAngle = GetTargetAngle(target, currentPosition, currentAngle);

                turnPidController.AddSample(targetAngle - currentAngle);

                var turnOutput = (float)turnPidController.GetLastOutput();

                power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;

                if (AimingObjective(targetAngle, currentAngle, turnOutput) && power.Available > 5)
                {
                    power.Fire(power.Available >= target.Life ? target.Life + 1 : power.Available);
                }
            }
        }

        private void GoToEnemisAlmirant(RadarSystem radar, PowerSystem power, NavigationSystem navigation)
        {
            var currentAngle = navigation.Angle;
            var currentPosition = navigation.Position;

            var target = LucioAlmirant.EnemisAlmirant;

            targetAngle = GetTargetAngle(target, currentPosition, currentAngle);

            turnPidController.AddSample(targetAngle - currentAngle);

            var turnOutput = (float)turnPidController.GetLastOutput();

            power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;

            if (radar.Enemies.Any(x => x.Type == ShipTypeEnum.MotherShip))
            {
                if (AimingObjective(targetAngle, currentAngle, turnOutput))
                {
                    power.Fire(power.Available >= target.Life ? target.Life + 1 : power.Available);
                }
            }
            else
            {
                if (AimingObjective(targetAngle, currentAngle, turnOutput))
                {
                    power.Acelerate(power.Available > 50 ? 50 : power.Available);
                }
            }
        }

        private void SearchEnemisAlmirant(RadarSystem radar, PowerSystem power, NavigationSystem navigation)
        {
            var currentAngle = navigation.Angle;
            var currentPosition = navigation.Position;

            if (onInit)
            {
                power.Acelerate(80);
                onInit = false;
                start = DateTime.Now;
            }

            if (radar.Enemies.Any() &&
                !radar.Enemies.All(x => x.Position.X == 0 && x.Position.Y == 0) &&
                radar.Enemies.Any(x => x.Position.X != 0 && x.Position.Y != 0 &&
                Math.Abs(x.Position.X - currentPosition.X) < 400 &&
                Math.Abs(x.Position.Y - currentPosition.Y) < 400))
            {
                RadarPoint enemiesToAttack;
                if (radar.Enemies.Any(x => x.Type == ShipTypeEnum.MotherShip))
                {
                    enemiesToAttack = radar.Enemies.First(x => x.Type == ShipTypeEnum.MotherShip);
                    IsAttacShip = true;
                    LucioAlmirant.EnemisAlmirant = enemiesToAttack;
                }
                else
                {
                    enemiesToAttack = radar.Enemies.First(
                        x => x.Position.X != 0 && x.Position.Y != 0 &&
                        Math.Abs(x.Position.X - currentPosition.X) < 400 &&
                        Math.Abs(x.Position.Y - currentPosition.Y) < 400);
                }

                var target = enemiesToAttack;

                targetAngle = GetTargetAngle(target, currentPosition, currentAngle);

                turnPidController.AddSample(targetAngle - currentAngle);

                var turnOutput = (float)turnPidController.GetLastOutput();

                power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;

                if (AimingObjective(targetAngle, currentAngle, turnOutput) && power.Available > 5)
                {
                    power.Fire(power.Available >= target.Life ? target.Life + 1 : power.Available);
                }
            }
            else if ((DateTime.Now - start).Minutes > 4)
            {
                targetPosition = new RadarPoint
                {
                    Position = new Vector2 { X = 10, Y = 10 },
                    Vel = new Vector2(0)
                };

                targetAngle = GetTargetAngle(targetPosition, currentPosition, currentAngle);

                turnPidController.AddSample(targetAngle - currentAngle);

                var turnOutput = (float)turnPidController.GetLastOutput();

                power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;

                if (OutputNearZero(targetAngle, currentAngle, turnOutput) && navigation.Speed.Length < 2)
                {
                    power.Acelerate(power.Available > 5 ? 5 : power.Available);
                }
            }
            else if (Math.Abs(currentPosition.X) > 800 || Math.Abs(currentPosition.Y) > 800)
            {
                targetPosition = new RadarPoint
                {
                    Position = new Vector2 { X = Math.Abs(currentPosition.X) > 800 ? 0 : currentPosition.Y, Y = Math.Abs(currentPosition.Y) > 800 ? 0 : -currentPosition.X },
                    Vel = new Vector2(0)
                };

                targetAngle = GetTargetAngle(targetPosition, currentPosition, currentAngle);

                turnPidController.AddSample(targetAngle - currentAngle);

                var turnOutput = (float)turnPidController.GetLastOutput();

                power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;

                if (OutputNearZero(targetAngle, currentAngle, turnOutput) && navigation.Speed.Length < 2)
                {
                    power.Acelerate(power.Available > 5 ? 5 : power.Available);
                }
            }
            else
            {
                targetPosition = targetPosition ?? new RadarPoint
                {
                    Position = new Vector2 { X = currentPosition.X < 0 ? -800 : 800, Y = currentPosition.Y < 0 ? -800 : 800 },
                    Vel = new Vector2(0)
                };

                targetAngle = GetTargetAngle(targetPosition, currentPosition, currentAngle);

                turnPidController.AddSample(targetAngle - currentAngle);

                var turnOutput = (float)turnPidController.GetLastOutput();

                power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;

                if (OutputNearZero(targetAngle, currentAngle, turnOutput) && navigation.Speed.Length < 2)
                {
                    power.Acelerate(power.Available > 5 ? 5 : power.Available);
                }
            }
        }

        float ClosestTargetAngle(float currentAngle, float targetAngle)
        {
            if (Math.Abs(targetAngle - currentAngle) >= pi)
            {
                if (targetAngle > currentAngle) return targetAngle - 2 * pi;
                else return targetAngle + 2 * pi;
            }
            return targetAngle;
        }

        private bool AimingObjective(float targetAngle, float currentAngle, float output)
        {
            return Math.Abs(targetAngle - currentAngle) < pi / 90;
        }

        private bool OutputNearZero(float targetAngle, float currentAngle, float output)
        {
            return Math.Abs(output) < 0.01;
        }

        private float GetTargetAngle(RadarPoint target, Vector2 currentPosition, float currentAngle)
        {
            var targetVelocity = target.Vel;
            var directionVector = target.Position + targetVelocity * targetVelocity.Length - currentPosition;

            targetAngle = Vector2.AngleBetween(directionVector, verticalDirection);
            if (target.Position.X < currentPosition.X) targetAngle *= -1;
            targetAngle = ClosestTargetAngle(currentAngle, targetAngle);

            return targetAngle;
        }

        private void TestAim(RadarSystem radar, PowerSystem power, NavigationSystem navigation)
        {
            var currentAngle = navigation.Angle;

            targetAngle = ClosestTargetAngle(currentAngle, targetAngle);

            turnPidController.AddSample(targetAngle - currentAngle);
            var turnOutput = (float)turnPidController.GetLastOutput();

            power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;

            if (OutputNearZero(targetAngle, currentAngle, turnOutput))
            {
                targetAngle += pi;
            }
        }
    }
}
