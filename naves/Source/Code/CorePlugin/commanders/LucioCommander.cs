using Duality;
using System;
using System.Linq;

namespace naves
{
    public class LucioCommander : ICommander
    {
        int rotate = 100;
        bool acelerate = true;

        /// <summary>
        /// Gets or sets the name.
        /// </summary>
        /// <value>
        /// The name.
        /// </value>
        public string Name { get { return "lucio"; } set { } }

        public void Refresh(RadarSystem radar, PowerSystem power, NavigationSystem navigation)
        {

            //var myPos = navigation.Position;
            //var mySpeed = navigation.Speed;
            //var myAngle = navigation.Angle;
            //var myPower = power.Available;
            power.RotateRight = 0f;
            
            if (radar.Enemies.Count() > 1)
            {
                power.Fire(10);
                power.Acelerate(30);
            }
            else
            {
                if (power.Available > 180)
                {
                    power.Fire(10);
                    power.Acelerate(5);
                }

                var vector0 = new Vector2() { X = 0, Y = 0 };
                if (radar.Enemies.Any(x => x.Position != vector0))
                {
                    PointTo(radar.Enemies.First(x => x.Position != vector0).Position, navigation, power);
                }
            }
        }

        private void PointTo(Vector2 posicion, NavigationSystem navigation, PowerSystem power)
        {
            var posX = navigation.Position.X;
            var posY = -navigation.Position.Y;
            Vector2 myPos = new Vector2() { X = posX, Y = posY };
            var anguloNecesitado = AngleNeeded(myPos, posicion);
            GoToAngle(anguloNecesitado, navigation, power);
        }
        
        private float AngleNeeded(Vector2 a, Vector2 b)
        {
            var vectObj = new Vector2() { X = b.X - a.X, Y = -b.Y - a.Y };
            return (float)Math.Atan2(vectObj.X, vectObj.Y);
        }

        private void GoToAngle(float objetivo, NavigationSystem navigation, PowerSystem power)
        {
            var miAngulo = navigation.Angle < Math.PI ? navigation.Angle : navigation.Angle - 2f * (float)Math.PI;
            var objetivoAngulo = objetivo < Math.PI ? objetivo : objetivo - 2f * (float)Math.PI;
            var powerGiven = 0f;
            var angulosDif = objetivo - miAngulo;
            if (Math.Abs((decimal)angulosDif) < (decimal)Math.PI / (decimal)45)
            {
                var powAv = power.Available;
                if (powAv >= 100f)
                {
                    power.Fire(100);
                }
                else
                {
                    power.Fire(power.Available);
                }

            }
            powerGiven = angulosDif * 5;
            power.RotateRight = powerGiven > 10f ? 10f : powerGiven < -10 ? -10f : powerGiven;
            var speed = navigation.Speed.Length;
            if (speed < 10)
            {
                power.Acelerate(power.Available / 100);
            }
        }
    }
}
