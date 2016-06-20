using Duality;
using PIDController;
using System;
using System.Linq;

namespace naves
{
    public class FirstCommander : ICommander
    {
        private FinalPidController turnPidController;

        private const float PROPORTIONAL_GAIN = 110f;
        private const float INTEGRAL_GAIN = 0.001f;
        private const float DERIVATIVE_GAIN = 20f;
        //private const float PROPORTIONAL_GAIN = 100f;
        //private const float INTEGRAL_GAIN = 0.005f;
        //private const float DERIVATIVE_GAIN = 20f;
        private PIDConfiguration Configuration1 = new PIDConfiguration(110f, 0.001f, 20f);
        private PIDConfiguration Configuration2 = new PIDConfiguration(10f, 0.005f, 20f);

        private float pi = (float)Math.PI;

        float targetAngle;
        float tempTargetAngle = 0;

        Vector2 verticalDirection = new Vector2 { X = 0, Y = -1 };

        public FirstCommander()
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
            var currentAngle = navigation.Angle;
            var currentPosition = navigation.Position;

            if (radar.Enemies.Any() && !radar.Enemies.All(x => x.Position.X == 0 && x.Position.Y == 0) && power.Available > 50)
            {
                var target = radar.Enemies.First(x => x.Position.X != 0 && x.Position.Y != 0);
                var directionVector = target.Position - currentPosition;

                targetAngle = Vector2.AngleBetween(directionVector, verticalDirection);
                targetAngle = ClosestTargetAngle(currentAngle, targetAngle);
                tempTargetAngle = targetAngle;

                turnPidController.AddSample(targetAngle - currentAngle);
                var turnOutput = (float)turnPidController.GetLastOutput();

                power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;

                if (turnOutput > -0.01 && turnOutput < 0.01)
                {
                    power.Fire(power.Available > 100 ? 100 : power.Available);
                }
            }
            else
            {
                targetAngle = ClosestTargetAngle(currentAngle, tempTargetAngle);

                turnPidController.AddSample(targetAngle - currentAngle);
                var turnOutput = (float)turnPidController.GetLastOutput();

                power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;

                if (turnOutput > -0.01 && turnOutput < 0.01 && power.Available >= 120)
                {
                    power.Acelerate(20);
                }
                if (navigation.Speed == new Vector2(0))
                {
                    tempTargetAngle = ClosestTargetAngle(tempTargetAngle, tempTargetAngle + pi / 4);
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
    }
}