using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace naves.Almirants
{
    public class AlmirantZombie1 : IAlmirant
    {
        int order = 1;

        public string Name => "Fake";

        public void Refresh(RadarSystem radar, Hangar hangar)
        {
            if (hangar.ShipsReady > 1)
            {
                hangar.Orders.Add(new ReleaseOrder(order, new ZombieCommander()));
                order++;
                if (order > 4) order = 1;
            }
        }
    }
}
