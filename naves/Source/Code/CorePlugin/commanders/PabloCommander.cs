using Duality;
using PIDController;
using System;
using System.Linq;

namespace naves
{
    public class PabloCommander : ICommander
    {
        private FinalPidController turnPidController;

        private const float PROPORTIONAL_GAIN = 110f;
        private const float INTEGRAL_GAIN = 0.001f;
        private const float DERIVATIVE_GAIN = 20f;
        //private const float PROPORTIONAL_GAIN = 100f;
        //private const float INTEGRAL_GAIN = 0.005f;
        //private const float DERIVATIVE_GAIN = 20f;
        private PIDConfiguration Configuration1 = new PIDConfiguration(200f, 0.001f, 25f);
        private PIDConfiguration Configuration2 = new PIDConfiguration(10f, 0.005f, 20f);

        private float pi = (float)Math.PI;
        private bool onInit = true;

        float targetAngle;
        RadarPoint targetPosition;

        Vector2 verticalDirection = new Vector2 { X = 0, Y = -1 };

        public PabloCommander()
        {
            turnPidController = new FinalPidController(Configuration1, 1);
        }

        /// <summary>
        /// Gets or sets the name.
        /// </summary>
        /// <value>
        /// The name.
        /// </value>
        public string Name
        {
            get { return "Pablo"; } set { }
        }

        public void Refresh(RadarSystem radar, PowerSystem power, NavigationSystem navigation)
        {
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
            return Math.Abs(targetAngle - currentAngle) < pi/120;
        }

        private bool OutputNearZero(float targetAngle, float currentAngle, float output)
        {
            return Math.Abs(output) < 0.01;
        }

        private void Refresh1(RadarSystem radar, PowerSystem power, NavigationSystem navigation)
        {
            var currentAngle = navigation.Angle;
            var currentPosition = navigation.Position;

            if (onInit)
            {
                power.Acelerate(50);
                onInit = false;
            }
            if (radar.Enemies.Any() && !radar.Enemies.All(x => x.Position.X == 0 && x.Position.Y == 0) && radar.Enemies.Any(x => x.Position.X != 0 && x.Position.Y != 0 && Math.Abs(x.Position.X - currentPosition.X) < 400 && Math.Abs(x.Position.Y - currentPosition.Y) < 400))
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
                    Position = new Vector2 { X = 700, Y = 900 },
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
                //if (power.Available >= 120)
                //{
                //    power.RotateRight = 0;
                //}

                //if (power.Available >= 180)
                //{
                //    power.Acelerate(15);
                //    power.RotateRight = 10f;
                //}
                //else if (navigation.Speed.Length < 0.5)
                //{
                //    power.Acelerate(power.Available > 10 ? 10 : power.Available);
                //    power.RotateRight = 1;
                //}
            }
        }

        private float GetTargetAngle(RadarPoint target, Vector2 currentPosition, float currentAngle)
        {
            var targetVelocity = target.Vel;
            var directionVector = target.Position + targetVelocity*targetVelocity.Length - currentPosition;

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