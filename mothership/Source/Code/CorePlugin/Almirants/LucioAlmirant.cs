using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace naves.Almirants
{
    public class LucioAlmirant : IAlmirant
    {
        public static bool IsAttac = true;
        public static RadarPoint EnemisAlmirant = null;

        int order = 1;

        public string Name => "Lucio";

        public void Refresh(RadarSystem radar, Hangar hangar)
        {
            if (hangar.ShipsReady > 1)
            {
                hangar.Orders.Add(new ReleaseOrder(order, new LucioCommander()));
                order++;
                if (order > 4)
                {
                    order = 1;
                    IsAttac = false;
                }
            }
        }
    }
}
