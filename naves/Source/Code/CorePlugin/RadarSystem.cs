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
        private Player player;
        private GameObject ship;

        public RadarSystem(GameObject ship)
        {
            this.ship = ship;
            this.player = ship?.GetComponent<Player>();
        }

        public RadarPoint[] Enemies => player?.RadarTargets?.Select(
            x => new RadarPoint()
            {
                Life = x.Life,
                Position = x.GameObj.Transform.Pos.Xy,
                Vel = x.GameObj.Transform.Vel.Xy
            }).ToArray();
    }
}
