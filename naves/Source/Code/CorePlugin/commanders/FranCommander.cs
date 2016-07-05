using Duality;
using System;
using System.Linq;

namespace naves
{
    public class FranCommander : ICommander
    {
        public string Name => "Fran";


        public void Refresh(RadarSystem radar, PowerSystem power, NavigationSystem navigation)
        {

            var myPos = navigation.Position;
            var mySpeed = navigation.Speed;
            var myAngle = navigation.Angle;
            var myPower = power.Available;
            power.RotateRight = 0f;
            if (power.Available > 199)
            {
                power.Fire(10);
                power.Acelerate(5);
            }

            //if (myPos.Length < 1000) power.Acelerate(1);
            var vector0 = new Vector2() { X = 0, Y = 0 };
            if (radar.Enemies.Any(x => x.Position != vector0))
            {
                apuntarAUnPunto(radar.Enemies.First(x => x.Position != vector0).Position, navigation, power);
            }
        }

        private void apuntarAUnPunto(Vector2 posicion, NavigationSystem navigation, PowerSystem power)
        {
            var posX = navigation.Position.X;
            var posY = -navigation.Position.Y;
            Vector2 myPos = new Vector2() { X = posX, Y = posY };
            var anguloNecesitado = AngleNeeded(myPos, posicion);
            irAAngulo(anguloNecesitado, navigation, power);
        }

        private float AngleNeeded(Vector2 a, Vector2 b)
        {
            var vectObj = new Vector2() { X = b.X - a.X, Y = -b.Y - a.Y };
            return (float)Math.Atan2(vectObj.X, vectObj.Y);
        }

        private void irAAngulo(float objetivo, NavigationSystem navigation, PowerSystem power)
        {
            var miAngulo = navigation.Angle < Math.PI ? navigation.Angle : navigation.Angle - 2f * (float)Math.PI;
            var objetivoAngulo = objetivo < Math.PI ? objetivo : objetivo - 2f * (float)Math.PI;
            var powerGiven = 0f;
            var angulosDif = objetivo - miAngulo;
            if (Math.Abs((decimal)angulosDif) < (decimal)Math.PI / (decimal)45)
            {
                var powAv = power.Available;
                if (powAv >= 101f)
                {
                    power.Fire(101);
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
