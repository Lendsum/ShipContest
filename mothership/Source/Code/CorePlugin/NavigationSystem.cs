using Duality;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace naves
{
    public class NavigationSystem
    {
        GameObject ship;
        Player player;

        /// <summary>
        /// Initializes a new instance of the <see cref="NavigationSystem"/> class.
        /// </summary>
        /// <param name="ship">The ship.</param>
        public NavigationSystem(GameObject ship)
        {
            this.ship = ship;
            this.player = ship?.GetComponent<Player>();
        }

        public Vector2 Position => this.ship.Transform.Pos.Xy;
        public Vector2 Speed => this.ship.Transform.Vel.Xy;
        public float Angle => this.ship.Transform.Angle;
    }
}
