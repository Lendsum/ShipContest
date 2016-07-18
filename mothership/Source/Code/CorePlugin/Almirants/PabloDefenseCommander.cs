using Duality;
using naves.Almirants;
using PIDController;
using System;
using System.Linq;

namespace naves
{
    public class PabloDefenseCommander : ICommander
    {
        Guid id;

        PabloAlmirant almirant;

        private FinalPidController turnPidController;

        private PIDConfiguration Configuration1 = new PIDConfiguration(200f, 0.001f, 25f); //...Minimized
        private PIDConfiguration Configuration2 = new PIDConfiguration(300f, 0.001f, 30f); //...Maximized
        private PIDConfiguration homeConfig = new PIDConfiguration(110f, 0.001f, 20f);

        private float pi = (float)Math.PI;

        float targetAngle;
        int order;

        Vector2 verticalDirection = new Vector2 { X = 0, Y = -1 };

        RadarPoint enemyMothership;

        public PabloDefenseCommander(PabloAlmirant almirant)
        {
            this.almirant = almirant;

            order = almirant.LastOrder;

            if (almirant.LastOrder == 1) almirant.Order1Full = true;
            if (almirant.LastOrder == 2) almirant.Order2Full = true;
            if (almirant.LastOrder == 3) almirant.Order3Full = true;
            if (almirant.LastOrder == 4) almirant.Order4Full = true;

            id = Guid.NewGuid();

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
            almirant.releasedShips[id] = new CustomShip
            {
                LastUpdate = DateTime.Now,
                Position = navigation.Position,
                Commander = this,
                Order = this.order
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

            if (radar.Enemies.Any(x => x.Type == ShipTypeEnum.AttackShip && Math.Abs(x.Position.X - currentPosition.X) < 400 && Math.Abs(x.Position.Y - currentPosition.Y) < 400) || 
                almirant.almirantEnemies.Any(x => (x.Position - currentPosition).Length < 160f))
            {
                target = radar.Enemies.FirstOrDefault(x => x.Type == ShipTypeEnum.AttackShip && Math.Abs(x.Position.X - currentPosition.X) < 400 && Math.Abs(x.Position.Y - currentPosition.Y) < 400);
                target = target ?? almirant.almirantEnemies.First();

                targetAngle = GetTargetAngle(target, currentPosition, currentAngle);

                turnPidController.AddSample(targetAngle - currentAngle);

                var turnOutput = (float)turnPidController.GetLastOutput();

                power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;

                if (AimingObjective(targetAngle, currentAngle, turnOutput) && power.Available > 5)
                {
                    power.Fire(power.Available >= target.Life ? target.Life + 1 : power.Available);
                }
            }
            else if (almirant.EnemyMothership != null)
            {
                target = almirant.EnemyMothership;

                targetAngle = GetTargetAngle(target, currentPosition, currentAngle);

                turnPidController.AddSample(targetAngle - currentAngle);

                var turnOutput = (float)turnPidController.GetLastOutput();

                power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;
            }
            else
            {
                power.RotateRight = 0;
            }
            //else
            //{
            //    targetPosition = new RadarPoint
            //    {
            //        Position = new Vector2 { X = 10, Y = 10 },
            //        Vel = new Vector2(0)
            //    };

            //    targetAngle = GetTargetAngle(targetPosition, currentPosition, currentAngle);

            //    turnPidController.AddSample(targetAngle - currentAngle);

            //    var turnOutput = (float)turnPidController.GetLastOutput();

            //    power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;

            //    if (OutputNearZero(targetAngle, currentAngle, turnOutput) && navigation.Speed.Length < 2)
            //    {
            //        power.Acelerate(power.Available > 5 ? 5 : power.Available);
            //    }
            //}
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