using Duality;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace naves
{
    public class RadarPoint
    {
        public Vector2 Position { get; set; }
        public Vector2 Vel { get; set; }
        public float Life { get; set; }

        /// <summary>
        /// 0- attack ship, 1-mothership
        /// </summary>
        public int ShipClass { get; set; }
    }
}
