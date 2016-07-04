using Duality;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace naves.Almirants
{
    public class ReleaseOrder
    {
        public ReleaseOrder(int position, ICommander commander)
        {
            this.Position = position;
            this.ShipCommander = commander;
        }

        /// <summary>
        /// 1-North, 2-East, 3-South,4-West
        /// </summary>
        public int Position { get; set; }

        /// <summary>
        /// Set your ship commander before launch
        /// </summary>
        public ICommander ShipCommander { get; set; }
    }
}
