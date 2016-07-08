using Duality;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace naves
{
    public class RadarSystem
    {
        private ShipController ownerShip;

        public RadarSystem(ShipController ownerShip)
        {
            this.ownerShip = ownerShip;
        }

        public RadarPoint[] Enemies => ownerShip?.ShipsInRadar.Values.Select(
            x => new RadarPoint()
            {
                Life = x.Life,
                Position = x.Position,
                Vel = x.Vel,
                Id=x.Id,
                Type=x.Type
            }).ToArray();
    }
}
