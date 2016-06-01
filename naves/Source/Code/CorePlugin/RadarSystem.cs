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

        public Vector2[] Enemies => player?.RadarTargets?.Select(x => x.GameObj.Transform.Pos.Xy).ToArray();
    }
}
