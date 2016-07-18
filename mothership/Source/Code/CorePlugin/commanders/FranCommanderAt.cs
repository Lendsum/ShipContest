using Duality;
using naves.Almirants;
using System;
using PIDController;
using System.Linq;

namespace naves
{
    public class FranCommanderAt : ICommander
    {
        #region PID

        private FranFinalPidController turnPidController;

        private PIDConfiguration Configuration1 = new PIDConfiguration(200f, 0.001f, 25f); //...Minimized
        private PIDConfiguration Configuration2 = new PIDConfiguration(170f, 0.001f, 6.35f); //...Maximized

        private float pi = (float)Math.PI;
        float targetAngle;
        float bulletDistance;

        Vector2 verticalDirection = new Vector2 { X = 0, Y = -1 };
        #endregion

        private bool onInit = true;

        RadarPoint possibleEnemyMothershipPosition;

        RadarPoint enemyMotherShipPosition;
        bool enemyMotherShipFound;

        public FranCommanderAt()
        {
            turnPidController = new FranFinalPidController(Configuration2, 1);
            bulletDistance = 80;
        }

        /// <summary>
        /// Gets or sets the name.
        /// </summary>
        /// <value>
        /// The name.
        /// </value>
        public string Name => "FranAt";

        public void Refresh(RadarSystem radar, PowerSystem power, NavigationSystem navigation)
        {
            UpdateCommonRadar(radar, navigation);
            if (FranStaticOrchestrator.EnemyMothershipFound)
            {
                if (!enemyMotherShipFound)
                {
                    enemyMotherShipFound = true;
                    enemyMotherShipPosition = FranStaticOrchestrator.EnemyMothershipPosition;
                }
                AttackEnemyMothership(enemyMotherShipPosition, radar, power, navigation);
            }
            else
            {
                WanderTilFindingEnemyMothership(radar, power, navigation);
            }
            IsEnemyCloseEnoughToFire(FranStaticOrchestrator.EnemyMothershipPosition, navigation);
        }

        private void UpdateCommonRadar(RadarSystem radar, NavigationSystem navigation)
        {
            FranStaticOrchestrator.NotifyOfEnemyMothershipInRadar(radar);
            if (!FranStaticOrchestrator.MyMothershipPositionDetermined)
            {
                FranStaticOrchestrator.SetMyMothershipPosition(navigation.Position);
            }
        }

        private void AttackEnemyMothership(RadarPoint target, RadarSystem radar, PowerSystem power, NavigationSystem navigation)
        {
            if (!IsEnemyCloseEnoughToFire(target, navigation))
            {
                WanderTilFindingEnemyMothership(radar, power, navigation);
            }

            var currentAngle = navigation.Angle;
            var currentPosition = navigation.Position;

            var targetPosition = enemyMotherShipPosition ?? new RadarPoint
            {
                Position = new Vector2 { X = currentPosition.X < 0 ? -800 : 800, Y = currentPosition.Y < 0 ? -800 : 800 },
                Vel = new Vector2(0)
            };

            targetAngle = GetTargetAngle(targetPosition, currentPosition, currentAngle);

            turnPidController.AddSample(targetAngle - currentAngle);

            var turnOutput = (float)turnPidController.GetLastOutput();

            power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;

            if (AimingObjective(targetAngle, currentAngle, turnOutput) &&
                !AimingAtOwnMothership(navigation) && 
                power.Available > 5)
            {
                power.Fire(power.Available >= target.Life ? target.Life + 1 : power.Available);
            }
        }

        private void WanderTilFindingEnemyMothership(RadarSystem radar, PowerSystem power, NavigationSystem navigation)
        {
            if (this.onInit)
            {
                this.possibleEnemyMothershipPosition = new RadarPoint { Position = FranStaticOrchestrator.PossibleEnemyMothershipPosition() };
                this.onInit = false;
            }

            UpdatePossibleEnemyMothershipPositionIfNeeded(navigation);

            var currentAngle = navigation.Angle;
            var currentPosition = navigation.Position;


            var targetPosition = enemyMotherShipPosition ?? possibleEnemyMothershipPosition ?? new RadarPoint
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
                power.Acelerate(power.Available > 20 ? 20 : power.Available);
            }
        }

        #region Private helpers

        private void UpdatePossibleEnemyMothershipPositionIfNeeded(NavigationSystem navigation)
        {
            if (this.possibleEnemyMothershipPosition == null) return;
            var myPos = navigation.Position;
            var targetPos = this.possibleEnemyMothershipPosition.Position;
            var vectorBetweenPos = targetPos - myPos;
            if (Math.Abs(vectorBetweenPos.Length) <= bulletDistance)
            {
                this.possibleEnemyMothershipPosition.Position =
                    FranStaticOrchestrator.SendShipToNextQuadrant(this.possibleEnemyMothershipPosition.Position);
            }
        }

        private bool IsEnemyCloseEnoughToFire(RadarPoint enemyPosition, NavigationSystem navigation)
        {
            if (enemyPosition == null) return false;
            var myPos = navigation.Position;
            var enemyMothershipPos = enemyPosition.Position;
            var vectorBetweenPos = enemyMothershipPos - myPos;
            return Math.Abs(vectorBetweenPos.Length) <= bulletDistance;
        }

        private bool AimingAtOwnMothership(NavigationSystem navigation)
        {
            var currentAngle = navigation.Angle;
            var currentPosition = navigation.Position;

            if (!FranStaticOrchestrator.MyMothershipPositionDetermined) return false;
            var myMothershipPos = new RadarPoint
            {
                Position = FranStaticOrchestrator.MyMothershipPosition,
                Vel = new Vector2(0)
            };

            targetAngle = GetTargetAngle(myMothershipPos, currentPosition, currentAngle);

            turnPidController.AddSample(targetAngle - currentAngle);

            var turnOutput = (float)turnPidController.GetLastOutput();

            return OutputNearZero(targetAngle, currentAngle, turnOutput);
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

        #endregion
    }
}
