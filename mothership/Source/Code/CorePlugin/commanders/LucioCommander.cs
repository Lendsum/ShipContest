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
            var enemies = radar.Enemies;
            
            if (enemies.Count() <= 0)
            {
                if (rotate == 0)
                {
                    power.RotateRight = 2;
                    rotate = 100;
                }
                else
                {
                    power.RotateRight = 0;
                    rotate = rotate - 1;

                    if (power.Available > 140)
                    {
                        power.Fire(20);
                        power.Acelerate(20);
                    }
                }
            }
            else
            {
                if (acelerate)
                {
                    if (power.Available > 50)
                        power.Fire(20);

                    power.Acelerate(30);

                    acelerate = false;
                }
                else
                {
                    power.Acelerate(power.Available / 2);

                    acelerate = true;
                }
            }
        }
    }
}
