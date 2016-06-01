using Duality;
using Duality.Components;
using Duality.Components.Physics;
using Duality.Resources;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace naves
{
    [RequiredComponent(typeof(Transform)), RequiredComponent(typeof(RigidBody))]
    public class SpaceBagController : Component, ICmpInitializable, ICmpCollisionListener
    {
        public void OnCollisionBegin(Component sender, CollisionEventArgs args)
        {
            //We cast to RigidBodyCollisionEventArgs to get access to the info about the shapes involved.
            var rigidBodyArgs = args as RigidBodyCollisionEventArgs;
            if (rigidBodyArgs != null && rigidBodyArgs.OtherShape.IsSensor) return;
            if (rigidBodyArgs == null) return;

            args.CollideWith.Transform.Pos = new Vector3(0, 0, 0);
        }

        public void OnCollisionEnd(Component sender, CollisionEventArgs args)
        {
           
        }

        public void OnCollisionSolve(Component sender, CollisionEventArgs args)
        {
           
        }

        public void OnInit(InitContext context)
        {
            
        }

        public void OnShutdown(ShutdownContext context)
        {

        }
    }
}
