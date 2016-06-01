using System;
using System.Collections.Generic;
using System.Linq;
using Duality.Components.Physics;
using Duality.Input;

using Duality;
using Duality.Components;
using Duality.Resources;
using Duality.Components.Renderers;


namespace naves
{
    public class ZombieCommander : ICommander
    {
        bool fire = false;
        public void Refresh(RadarSystem radar, PowerSystem power, NavigationSystem navigation)
        {
            if (power.Available>100)
            {
                if (fire)
                {
                    power.Fire(power.Available);
                    fire = false;
                    power.RotateRight = 2;
                }
                else
                {
                    power.Acelerate(power.Available);
                    fire = true;
                    power.RotateRight = -2;
                }
            }
        }
    }
}
