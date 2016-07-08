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
        public int Id { get; set; }
        public ShipTypeEnum Type { get; set; }
    }
}
