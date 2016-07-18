using System.Collections.Generic;

namespace PIDController
{
    public class FranFinalPidController
    {
        double _dt;
        int _maxHistory;
        double _kIntegral;
        double _kProportional;
        double _kDerivative;
        double _kPlant;
        List<double> _errors;
        double _output;

        int MIN_SAMPLES = 3;

        public FranFinalPidController(PIDConfiguration configuration, double kPlant)
        {
            _dt = 4.0 / 1000;
            _kProportional = configuration.ProportionalGain;
            _kIntegral = configuration.IntegralGain;
            _kDerivative = configuration.DerivativeGain;
            _kPlant = kPlant;
            _maxHistory = 7;
//  ResetConstants();
            ResetHistory();
        }

        public void AddSample(double error)
        {
            _errors.Add(error);
            while (_errors.Count > _maxHistory)
            {  // If we got too big, remove the history.
               // NOTE:  This is not terribly efficient.  We
               // could keep all this in a fixed size array
               // and then do the math using the offset from
               // the beginning and module math.  But this
               // gets complicated fast.  KISS.
                _errors.RemoveAt(0);
            }
            CalculateNextOutput();
        }

        public double GetLastOutput()
        {
            return _output;
        }

        void ResetHistory()
        {
            _errors = new List<double>();
            _output = 0.0;
        }

        void ResetConstants()
        {
            _kIntegral = 0.0;
            _kDerivative = 0.0;
            _kProportional = 0.0;
            _kPlant = 1.0;
        }

        private void CalculateNextOutput()
        {
            if (_errors.Count < MIN_SAMPLES)
            {  // We need a certain number of samples
               // before we can do ANYTHING at all.
                _output = 0.0;
            }
            else
            {  // Estimate each part.
                var errorSize = _errors.Count;
                // Proportional
                double prop = _kProportional * _errors[errorSize - 1];

                // Integral - Use Extended Simpson's Rule
                double integral = 0;
                for (int idx = 1; idx < errorSize - 1; idx += 2)
                {
                    integral += 4 * _errors[idx];
                }
                for (int idx = 2; idx < errorSize - 1; idx += 2)
                {
                    integral += 2 * _errors[idx];
                }
                integral += _errors[0];
                integral += _errors[errorSize - 1];
                integral /= (3 * _dt);
                integral *= _kIntegral;

                // Derivative
                double deriv = _kDerivative * (_errors[errorSize - 1] - _errors[errorSize - 2]) / _dt;

                // Total P+I+D
                double result = _kPlant * (prop + integral + deriv);

                _output = result;
            }
        }

        private double SingleStepPredictor(
                               double x0, double y0,
                               double x1, double y1,
                               double dt)
        {
            double m = (y1 - y0) / (x1 - x0);
            double b = y1 - m * x1;
            double result = m * (x1 + dt) + b;
            return result;
        }
    }
}