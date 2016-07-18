using Duality;
using naves.Almirants;
using PIDController;
using System;
using System.Linq;

namespace naves
{
    public class PabloAttackCommander : ICommander
    {
        Guid id;

        PabloAlmirant almirant;
        bool firstShip;

        private FinalPidController turnPidController;

        private PIDConfiguration Configuration1 = new PIDConfiguration(200f, 0.001f, 25f); //...Minimized
        private PIDConfiguration Configuration2 = new PIDConfiguration(300f, 0.001f, 30f); //...Maximized
        //private PIDConfiguration Configuration2 = new PIDConfiguration(170f, 0.001f, 6.35f); //...Maximized
        private PIDConfiguration homeConfig = new PIDConfiguration(110f, 0.001f, 20f);

        private float pi = (float)Math.PI;

        float targetAngle;
        RadarPoint targetPosition;

        Vector2 verticalDirection = new Vector2 { X = 0, Y = -1 };

        Vector2 lastTargetPosition = new Vector2();

        
        RadarPoint enemyMothership;

        public PabloAttackCommander(PabloAlmirant almirant)
        {
            this.almirant = almirant;

            id = Guid.NewGuid();
            firstShip = almirant.FirstShip;

            almirant.releasedShips.Add(id, new CustomShip());
            turnPidController = new FinalPidController(Configuration2, 1);
            enemyMothership = almirant.EnemyMothership ?? null;
        }

        /// <summary>
        /// Gets or sets the name.
        /// </summary>
        /// <value>
        /// The name.
        /// </value>
        public string Name
        {
            get { return "Pablo"; }
            set { }
        }

        public void Refresh(RadarSystem radar, PowerSystem power, NavigationSystem navigation)
        {
            if (lastTargetPosition == new Vector2(0)) lastTargetPosition = navigation.Position;

            if (almirant.MothershipPosition == new Vector2(0))
            {
                almirant.MothershipPosition = navigation.Position;
            }
            almirant.releasedShips[id] = new CustomShip
            {
                LastUpdate = DateTime.Now,
                Position = navigation.Position,
                Commander = this
            };

            Refresh1(radar, power, navigation);
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

        private void Refresh1(RadarSystem radar, PowerSystem power, NavigationSystem navigation)
        {
            var currentAngle = navigation.Angle;
            var currentPosition = navigation.Position;
            RadarPoint target = null;

            if (firstShip)
            {
                targetPosition = new RadarPoint
                {
                    Position = new Vector2 { X = -lastTargetPosition.X, Y = -lastTargetPosition.Y },
                    Vel = new Vector2(0)
                };
            }

            if (enemyMothership == null) enemyMothership = almirant.EnemyMothership ?? null;

            if (radar.Enemies.Any(x => x.Type == ShipTypeEnum.MotherShip) || (almirant.EnemyMothership != null && (almirant.EnemyMothership.Position - currentPosition).Length < 160f))
            {
                if (enemyMothership == null) enemyMothership = radar.Enemies.First(x => x.Type == ShipTypeEnum.MotherShip);

                almirant.EnemyMothership = enemyMothership;
                target = enemyMothership;
            }
            else if (radar.Enemies.Any(x => x.Type == ShipTypeEnum.AttackShip && Math.Abs(x.Position.X - currentPosition.X) < 400 && Math.Abs(x.Position.Y - currentPosition.Y) < 400))
            {
                target = radar.Enemies.First(x => x.Type == ShipTypeEnum.AttackShip && Math.Abs(x.Position.X - currentPosition.X) < 400 && Math.Abs(x.Position.Y - currentPosition.Y) < 400);
            }

            if (target != null)
            {
                targetAngle = GetTargetAngle(target, currentPosition, currentAngle);

                turnPidController.AddSample(targetAngle - currentAngle);

                var turnOutput = (float)turnPidController.GetLastOutput();

                power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;

                if (AimingObjective(targetAngle, currentAngle, turnOutput) && power.Available > 5)
                {
                    power.Fire(power.Available >= target.Life ? target.Life + 1 : power.Available);
                }
            }
            else if (enemyMothership != null)
            {
                targetPosition = new RadarPoint
                {
                    Position = enemyMothership.Position,
                    Vel = new Vector2(0)
                };

                targetAngle = GetTargetAngle(targetPosition, currentPosition, currentAngle);

                turnPidController.AddSample(targetAngle - currentAngle);

                var turnOutput = (float)turnPidController.GetLastOutput();

                power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;

                if (OutputNearZero(targetAngle, currentAngle, turnOutput) && power.Available > 150)
                {
                    power.Acelerate(power.Available > 5 ? 5 : power.Available);
                }
            }
            else if (Math.Abs(currentPosition.X) > 800 && Math.Abs(currentPosition.Y) > 800)
            {
                targetPosition = new RadarPoint
                {
                    Position = new Vector2 { X = lastTargetPosition == almirant.MothershipPosition ? lastTargetPosition.X : -lastTargetPosition.X, Y = -lastTargetPosition.Y },
                    Vel = new Vector2(0)
                };

                targetAngle = GetTargetAngle(targetPosition, currentPosition, currentAngle);

                turnPidController.AddSample(targetAngle - currentAngle);

                var turnOutput = (float)turnPidController.GetLastOutput();

                power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;

                if (OutputNearZero(targetAngle, currentAngle, turnOutput) && power.Available > 150)
                {
                    power.Acelerate(power.Available > 5 ? 5 : power.Available);
                }
            }
            else
            {
                if (targetPosition == null && power.Available > 150)
                {
                    power.Acelerate(power.Available > 5 ? 5 : power.Available);
                }
                else if (targetPosition != null)
                {
                    targetAngle = GetTargetAngle(targetPosition, currentPosition, currentAngle);

                    turnPidController.AddSample(targetAngle - currentAngle);

                    var turnOutput = (float)turnPidController.GetLastOutput();

                    power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;

                    if (OutputNearZero(targetAngle, currentAngle, turnOutput) && power.Available > 150)
                    {
                        power.Acelerate(power.Available > 5 ? 5 : power.Available);
                    }
                }
            }
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