namespace PIDController
{
    public class PIDConfiguration
    {
        private float PROPORTIONAL_GAIN;
        private float INTEGRAL_GAIN;
        private float DERIVATIVE_GAIN;


        public PIDConfiguration(float PROPORTIONAL_GAIN, float INTEGRAL_GAIN, float DERIVATIVE_GAIN)
        {
            this.PROPORTIONAL_GAIN = PROPORTIONAL_GAIN;
            this.INTEGRAL_GAIN = INTEGRAL_GAIN;
            this.DERIVATIVE_GAIN = DERIVATIVE_GAIN;
        }

        public float ProportionalGain { get { return this.PROPORTIONAL_GAIN; } }
        public float IntegralGain { get { return this.INTEGRAL_GAIN; } }
        public float DerivativeGain { get { return this.DERIVATIVE_GAIN; } }
    }
}