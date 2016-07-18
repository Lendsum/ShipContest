using Duality;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace naves.Almirants
{
    public class AlmirantRush : IAlmirant
    {
        public string Name
        {
            get { return "RikoRushAlmirant"; }
            set { }
        }        
        public static Vector2? enemyMotherShip = null;
        public static Vector2? myPositionMothership = null;

        public void Refresh(RadarSystem radar, Hangar hangar)
        {
            if (hangar.ShipsReady > 1)
            {
                hangar.Orders.Add(new ReleaseOrder(1, new RushComander()));
            }
        }
    }
}
