using System;
using System.Collections.Generic;
using System.Linq;
using Duality.Components.Physics;
using Duality.Input;

using Duality;
using PIDController;
using naves.Almirants;

namespace naves
{
    public class RushComander : ICommander
    {
        /// <summary>
        /// Gets or sets the name.
        /// </summary>
        /// <value>
        /// The name.
        /// </value>
        public string Name
        {
            get { return "RikoRush"; }
            set { }
        }

        private FinalPidController turnPidController;

        private PIDConfiguration Configuration1 = new PIDConfiguration(200f, 0.001f, 25f); //...Minimized
        private PIDConfiguration Configuration2 = new PIDConfiguration(190f, 0.001f, 6.35f); //...Maximized
        DateTime start;
        public int tries = 0;
        float targetAngle;
        Vector2? locationTarget;
        public Vector2? enemyMotherShip = AlmirantRush.enemyMotherShip;
        public Vector2? myPositionMothership = AlmirantRush.myPositionMothership;

        public RushComander()
        {
            turnPidController = new FinalPidController(Configuration1, 1);
        }

        public void Refresh(RadarSystem radar, PowerSystem power, NavigationSystem navigation)
        {
            power.RotateRight = 0f;
            var myPos = navigation.Position;
            var mySpeed = navigation.Speed;
            var enemies = radar.Enemies.ToList();
            if (AlmirantRush.myPositionMothership == null)
            {
                AlmirantRush.myPositionMothership = new Vector2(myPos.X, myPos.Y - 120);
            }
            if (AlmirantRush.enemyMotherShip == null)
            {
                if (enemies.Any(x => x.Type == ShipTypeEnum.MotherShip))
                {
                    AlmirantRush.enemyMotherShip = enemies.First(x => x.Type == ShipTypeEnum.MotherShip).Position;
                }
            }
            

            var enemiesShips = enemies.Where(x => x.Type == ShipTypeEnum.AttackShip).ToList();

            if (enemiesShips.Any(x => Hitted(navigation, x)))
            {
                var powAv = power.Available;
                if (powAv >= 101)
                {
                    power.Fire(101);
                }
            }

            if (AlmirantRush.enemyMotherShip == null)
            {
                if (locationTarget == null)
                {
                    locationTarget = new Vector2(-AlmirantRush.myPositionMothership.Value.X, -AlmirantRush.myPositionMothership.Value.X);
                }

                else if ((myPos - locationTarget).Value.Length < 300 && !enemies.Any(x => x.Type == ShipTypeEnum.MotherShip))
                {
                    if (tries == 0)
                    {
                        locationTarget = new Vector2(locationTarget.Value.X, -locationTarget.Value.X);
                        tries = 1;
                    }
                    if (tries == 1)
                    {
                        locationTarget = new Vector2(-locationTarget.Value.X, -locationTarget.Value.X);
                    }
                }
                var anguloNecesitado = AngleNeeded2(locationTarget.Value, navigation);
                targetAngle = anguloNecesitado;
                var sample = Math.Abs(targetAngle - navigation.Angle) < Math.PI ? -(targetAngle - navigation.Angle) : navigation.Angle - targetAngle > 0 ? navigation.Angle - targetAngle - 2 * Math.PI : navigation.Angle - targetAngle + 2 * Math.PI;
                turnPidController.AddSample(-sample);

                var turnOutput = (float)turnPidController.GetLastOutput();
                power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;
                if (power.Available > 190 && mySpeed.Length < 2) power.Acelerate(2);
                else if (power.Available > 185 && mySpeed.Length < 2) power.Acelerate(2);
                else if (power.Available > 180 && mySpeed.Length < 4) power.Acelerate(4);
                else if (power.Available > 175 && mySpeed.Length < 6) power.Acelerate(6);
                else if (power.Available > 170 && mySpeed.Length < 8) power.Acelerate(8);

            }
            else
            {
                locationTarget = AlmirantRush.enemyMotherShip;
                var anguloNecesitado = AngleNeeded2(locationTarget.Value, navigation);
                targetAngle = anguloNecesitado;
                var sample = Math.Abs(targetAngle - navigation.Angle) < Math.PI ? -(targetAngle - navigation.Angle) : navigation.Angle - targetAngle > 0 ? navigation.Angle - targetAngle - 2 * Math.PI : navigation.Angle - targetAngle + 2 * Math.PI;
                turnPidController.AddSample(-sample);

                var turnOutput = (float)turnPidController.GetLastOutput();
                power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;
                if (enemies.Any(x => x.Type == ShipTypeEnum.MotherShip))
                {
                    if (Hitted(navigation, enemies.First(x => x.Type == ShipTypeEnum.MotherShip)))
                    {
                        var firetomother = power.Available;
                        power.Fire(firetomother);
                    }
                }
                else
                {
                    if (power.Available > 190 && mySpeed.Length < 2) power.Acelerate(2);
                    else if (power.Available > 185 && mySpeed.Length < 2) power.Acelerate(2);
                    else if (power.Available > 180 && mySpeed.Length < 4) power.Acelerate(4);
                    else if (power.Available > 175 && mySpeed.Length < 6) power.Acelerate(6);
                    else if (power.Available > 170 && mySpeed.Length < 8) power.Acelerate(8);
                }
            }

        }

        private float AngleNeeded2(Vector2 b, NavigationSystem navigation)
        {
            var posX = navigation.Position.X;
            var posY = -navigation.Position.Y;
            Vector2 myPos = new Vector2() { X = posX, Y = posY };
            var posB = b;
            var vectObj = new Vector2() { X = posB.X - myPos.X, Y = -posB.Y - myPos.Y };
            return (float)Math.Atan2(vectObj.X, vectObj.Y);
        }
        private void apuntarAUnPunto(RadarPoint enemy, NavigationSystem navigation, PowerSystem power, IEnumerable<RadarPoint> enemies)
        {
            var anguloNecesitado = AngleNeeded(enemy, navigation);
            if (power.Available > enemy.Life - 20)
            {
                irAAngulo(anguloNecesitado, navigation, power, enemy, enemies);
            }
            else if (navigation.Speed.Length < 10)
            {
                //power.Acelerate(Math.Min(power.Available, 10));
            }
        }

        private void irAAngulo(float objetivo, NavigationSystem navigation, PowerSystem power, RadarPoint enemy, IEnumerable<RadarPoint> enemies)
        {
            if (power.Available >= enemy.Life + 3 && navigation.Speed.Length < 10 && power.Available > 140)
            {
                //power.Acelerate(Math.Min(power.Available, 2));
            }

            var miAngulo = navigation.Angle;

            var objetivoAngulo = objetivo < Math.PI ? objetivo : objetivo - 2f * (float)Math.PI;
            objetivoAngulo = !(objetivo < -Math.PI) ? objetivo : objetivo + 2f * (float)Math.PI;
            if (objetivo < 0)
            {
                objetivoAngulo = objetivo + 2f * (float)Math.PI;
            }
            targetAngle = objetivoAngulo;
            start = DateTime.Now;
            var sample = Math.Abs(objetivoAngulo - miAngulo) < Math.PI ? -(objetivoAngulo - miAngulo) : miAngulo - objetivoAngulo > 0 ? miAngulo - objetivoAngulo - 2 * Math.PI : miAngulo - objetivoAngulo + 2 * Math.PI;

            turnPidController.AddSample(-sample);

            var turnOutput = (float)turnPidController.GetLastOutput();
            power.RotateRight = turnOutput > 10f ? 10f : turnOutput < -10f ? -10f : turnOutput;

            var angulosDif = objetivoAngulo - miAngulo;
            var myBullet = Vector2.FromAngleLength(miAngulo, 30f);
            if (enemies.Any(x => Hitted(navigation, x))  /*Math.Abs((decimal)angulosDif) < (decimal)Math.PI / (decimal)60*/)
            {
                var powAv = power.Available;
                if (powAv >= enemy.Life + 1)
                {
                    power.Fire(enemy.Life + 1);
                    //power.Acelerate(Math.Min(power.Available, 10));
                }
            }
        }


        private float AngleNeeded(RadarPoint b, NavigationSystem navigation)
        {
            var posX = navigation.Position.X;
            var posY = -navigation.Position.Y;
            Vector2 myPos = new Vector2() { X = posX, Y = posY };
            var velB = b.Vel;
            var dist = (b.Position - navigation.Position).Length;
            var multOfDist = dist / 100;
            var posB = b.Position + (multOfDist * velB);
            var vectObj = new Vector2() { X = posB.X - myPos.X, Y = -posB.Y - myPos.Y };
            return (float)Math.Atan2(vectObj.X, vectObj.Y);
        }

        private bool Hitted(NavigationSystem navigation, RadarPoint enemy)
        {
            decimal tries = 20;
            var miAngulo = navigation.Angle;
            var myBullet = Vector2.FromAngleLength(miAngulo, 30f);
            decimal i = 0;
            while (i < tries)
            {

                if (((navigation.Position + myBullet * (float)i) - (enemy.Position + enemy.Vel * (float)i)).Length < 15)
                {
                    return true;
                }
                i += (decimal)1 / 10;
            }
            return false;
        }

        private bool HittedMother(NavigationSystem navigation, RadarPoint enemy)
        {
            decimal tries = 20;
            var miAngulo = navigation.Angle;
            var myBullet = Vector2.FromAngleLength(miAngulo, 30f);
            decimal i = 0;
            while (i < tries)
            {

                if (((navigation.Position + myBullet * (float)i) - (enemy.Position + enemy.Vel * (float)i)).Length < 30)
                {
                    return true;
                }
                i += (decimal)1 / 10;
            }
            return false;
        }

    }
}
