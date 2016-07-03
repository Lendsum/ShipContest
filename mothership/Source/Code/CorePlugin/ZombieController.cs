using System;
using System.Collections.Generic;
using System.Linq;
using Duality.Components.Physics;
using Duality.Input;

using Duality;
using Duality.Components;
using Duality.Resources;
using Duality.Components.Renderers;


namespace naves
{
    [RequiredComponent(typeof(RigidBody)), RequiredComponent(typeof(Transform)), RequiredComponent(typeof(TextRenderer))]
    public class ZombieController : Component, ICmpUpdatable, ICmpInitializable, ICmpCollisionListener
    {
        public void OnCollisionBegin(Component sender, CollisionEventArgs args)
        {

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

        public void OnUpdate()
        {

        }
    }
}
