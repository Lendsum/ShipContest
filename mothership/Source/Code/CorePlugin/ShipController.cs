using Duality;
using Duality.Components;
using Duality.Components.Physics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace naves
{
    public abstract class ShipController : Component
    {
        public Transform TransformComponent { get; private set; }
        public ShipTypeEnum Type { get; private set; }
        public float Life { get; set; }
        public Vector2 Position => this.TransformComponent.Pos.Xy;
        public Vector2 Vel => this.TransformComponent.Vel.Xy;
        public int Id { get; private set; }
        public int Faction { get; private set; }
        public Dictionary<int, ShipController> ShipsInRadar { get; private set; } = new Dictionary<int, ShipController>();

        protected void Init(Transform transformComponent, float life, ShipTypeEnum type, int faction)
        {
            this.Id = Counter.GetNextShip();
            this.Type = type;
            this.TransformComponent = transformComponent;
            this.Life = life;
            this.Faction = faction;
        }

        protected void HandleRadarDetectionBegin(ShipController ship)
        {
            if (ship.Faction == this.Faction) return;
            if (this.ShipsInRadar.ContainsKey(ship.Id)) return;
            this.ShipsInRadar.Add(ship.Id, ship);
        }

        protected void HandleRadarDetectionEnd(ShipController ship)
        {
            if (this.ShipsInRadar.ContainsKey(ship.Id)) this.ShipsInRadar.Remove(ship.Id);
        }

        public void OnCollisionBegin(Component sender, CollisionEventArgs args)
        {
            //We cast to RigidBodyCollisionEventArgs to get access to the info about the shapes involved.
            var rigidBodyArgs = args as RigidBodyCollisionEventArgs;
            if (rigidBodyArgs != null && !rigidBodyArgs.OtherShape.IsSensor)
            {
                var otherShip = rigidBodyArgs.CollideWith.GetComponent<ShipController>();
                if (otherShip != null)
                {
                    this.HandleRadarDetectionBegin(otherShip);
                }
            }
        }

        public void OnCollisionEnd(Component sender, CollisionEventArgs args)
        {
            var rigidBodyArgs = args as RigidBodyCollisionEventArgs;
            if (rigidBodyArgs != null && !rigidBodyArgs.OtherShape.IsSensor)
            {
                var otherPlayer = rigidBodyArgs.CollideWith.GetComponent<ShipController>();
                if (otherPlayer != null)
                {
                    this.HandleRadarDetectionEnd(otherPlayer);
                }
            }
        }

        public void OnCollisionSolve(Component sender, CollisionEventArgs args)
        {
        }

        public void OnShutdown(ShutdownContext context)
        {
        }
    }
}
