using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace naves
{
    public class FranCommander : ICommander
    {
        public string Name => "Fran";

        public void Refresh(RadarSystem radar, PowerSystem power, NavigationSystem navigation)
        {
            if (power.Available > 100)
            {
                power.Acelerate(power.Available);
                power.RotateRight = -2;
            }
        }
    }
}
