using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace naves.Almirants
{
    public class AlmirantZombie1 : IAlmirant
    {
        public void Refresh(RadarSystem radar, Hangar hangar)
        {
            if (hangar.ShipsReady > 1)
            {
                hangar.Orders.Add(new ReleaseOrder(1, new ZombieCommander()));
            }
        }
    }
}
