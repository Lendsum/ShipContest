using System;
using System.Collections.Generic;
using System.Linq;
using Duality.Components.Physics;
using Duality.Input;

using Duality;

namespace naves
{
    public class RikiNhO2Comander : ICommander
    {
        /// <summary>
        /// Gets or sets the name.
        /// </summary>
        /// <value>
        /// The name.
        /// </value>
        public string Name
        {
            get { return "Ricoo"; }
            set { }
        }


        public void Refresh(RadarSystem radar, PowerSystem power, NavigationSystem navigation)
        {

            var myPos = navigation.Position;
            power.RotateRight = 0;
            var mySpeed = navigation.Speed.Length;
            var myAngle = navigation.Angle;
            var myPower = power.Available;
            if (mySpeed == 0 && myPower > 100 && navigation.Position != new Vector2(0))
            {
                power.Acelerate(5);
            }
            else if (mySpeed < 5 && myPower > 130)
            {
                power.Acelerate(5);
            }
            else if (mySpeed < 15 && myPower > 170)
            {
                power.Acelerate(10);
            }
            
                       

            


            //if (myPos.Length < 1000) power.Acelerate(1);
            var vector0 = new Vector2() { X = 0, Y = 0 };
            if (radar.Enemies.Any(x => x.Position != vector0))
            {
                apuntarAUnPunto(radar.Enemies.First(x => x.Position != vector0), navigation, power);
            }
        }

        private void apuntarAUnPunto(RadarPoint posicion, NavigationSystem navigation, PowerSystem power)
        {
            var posX = navigation.Position.X;
            var posY = -navigation.Position.Y;
            Vector2 myPos = new Vector2() { X = posX, Y = posY };
            var anguloNecesitado = AngleNeeded(myPos, posicion, navigation);
            irAAngulo(anguloNecesitado, navigation, power, posicion);

        }


        private float AngleNeeded(Vector2 a, RadarPoint b, NavigationSystem navigation)
        {
            var velB = b.Vel;
            var dist = (b.Position - a).Length;
            var multOfDist = dist / 100;
            var posB = b.Position + (multOfDist * velB);
            var vectObj = new Vector2() { X = posB.X - a.X, Y = -posB.Y - a.Y };
            return (float)Math.Atan2(vectObj.X, vectObj.Y);
        }

        private void irAAngulo(float objetivo, NavigationSystem navigation, PowerSystem power, RadarPoint enemy)
        {
            var miAngulo = navigation.Angle;

            var objetivoAngulo = objetivo < Math.PI ? objetivo : objetivo - 2f * (float)Math.PI;
            objetivoAngulo = !(objetivo < -Math.PI) ? objetivo : objetivo + 2f * (float)Math.PI;
            if (objetivo < 0)
            {
                objetivoAngulo = objetivo + 2f * (float)Math.PI;
            }

            var powerGiven = 0f;
            var angulosDif = objetivoAngulo - miAngulo;
            var myBullet = Vector2.FromAngleLength(miAngulo, 30f);
            if (Hitted(navigation, enemy)  /*Math.Abs((decimal)angulosDif) < (decimal)Math.PI / (decimal)60*/)
            {
                var powAv = power.Available;
                if (powAv >= enemy.Life + 1)
                {
                    power.Fire(enemy.Life + 1);
                }
            }
            if (objetivoAngulo > miAngulo)
            {
                if (angulosDif < Math.PI)
                {
                    var powerToTurn = Math.Min(angulosDif, miAngulo - objetivoAngulo);
                    powerGiven = angulosDif > Math.PI / 4 ? Math.Abs(powerToTurn) * 5 : Math.Abs(powerToTurn) * 5;
                    power.RotateRight = powerGiven > 10f ? 10f : powerGiven < -10 ? -10f : powerGiven;
                }
                else
                {
                    var powerToTurn = Math.Min(angulosDif, miAngulo - objetivoAngulo);
                    powerGiven = angulosDif > Math.PI / 4 ? -Math.Abs(powerToTurn) * 5 : -Math.Abs(powerToTurn) * 5;
                    power.RotateRight = powerGiven > 10f ? 10f : powerGiven < -10 ? -10f : powerGiven;
                }

            }
            else
            {
                angulosDif = miAngulo - objetivoAngulo;
                if (angulosDif < Math.PI)
                {
                    var powerToTurn = Math.Min(angulosDif, objetivoAngulo - miAngulo);
                    powerGiven = angulosDif > Math.PI / 4 ? -Math.Abs(powerToTurn) * 5 : -Math.Abs(powerToTurn) * 5;
                    power.RotateRight = powerGiven > 10f ? 10f : powerGiven < -10 ? -10f : powerGiven;
                }
                else
                {
                    var powerToTurn = Math.Min(angulosDif, miAngulo - objetivoAngulo);
                    powerGiven = angulosDif > Math.PI / 4 ? Math.Abs(powerToTurn) * 5 : Math.Abs(powerToTurn) * 5;
                    power.RotateRight = powerGiven > 10f ? 10f : powerGiven < -10 ? -10f : powerGiven;
                }
            }
            //var speed = navigation.Speed.Length;
            //if (speed < 10 && power.Available > enemy.Life + 1)
            //{
            //    power.Acelerate(power.Available / 100);
            //}
        }

        private bool Hitted(NavigationSystem navigation, RadarPoint enemy)
        {
            decimal tries = 15;
            var miAngulo = navigation.Angle;
            var myBullet = Vector2.FromAngleLength(miAngulo, 30f);
            decimal i = 0;
            while (i < tries)
            {

                if (((navigation.Position + myBullet * (float)i) - (enemy.Position + enemy.Vel * (float)i)).Length < 10)
                {
                    return true;
                }
                i += (decimal) 1/ 10;
            }
            return false;
        }

    }
}
