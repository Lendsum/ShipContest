using Duality;
using Duality.Components;
using Duality.Components.Physics;
using Duality.Components.Renderers;
using Duality.Resources;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace naves
{
    [RequiredComponent(typeof(Transform)), RequiredComponent(typeof(RigidBody))]
    public class SpaceBagController : Component, ICmpInitializable, ICmpCollisionListener, ICmpUpdatable
    {
        Random random = new Random();

        MothershipController mother1;
        MothershipController mother2;
        Transform camera;

        public void OnCollisionBegin(Component sender, CollisionEventArgs args)
        {
            //We cast to RigidBodyCollisionEventArgs to get access to the info about the shapes involved.
            var rigidBodyArgs = args as RigidBodyCollisionEventArgs;
            if (rigidBodyArgs != null && rigidBodyArgs.OtherShape.IsSensor) return;
            if (rigidBodyArgs == null) return;

            float x = random.Next(-50, 50);
            float y = random.Next(-50, 50);

            args.CollideWith.Transform.Pos = new Vector3(x, y, 0);
        }

        public void OnCollisionEnd(Component sender, CollisionEventArgs args)
        {

        }

        public void OnCollisionSolve(Component sender, CollisionEventArgs args)
        {

        }

        public void OnInit(InitContext context)
        {
            if (context != InitContext.Activate) return;
            var motherships = this.GameObj.ParentScene.FindGameObjects<MothershipController>().ToArray();

            if (motherships != null && motherships.Count() == 2)
            {
                this.mother1 = motherships[0].GetComponent<MothershipController>();
                this.mother2 = motherships[1].GetComponent<MothershipController>();
            }

            this.camera = this?.GameObj?.ParentScene?.FindGameObject<Camera>().GetComponent<Transform>();
        }

        public void OnShutdown(ShutdownContext context)
        {

        }

        public void OnUpdate()
        {
            if (DualityApp.Keyboard[Duality.Input.Key.Number1])
            {
                this.camera.Pos = new Vector3(mother1.TransformComponent.Pos.Xy, this.camera.Pos.Z);
            }

            if (DualityApp.Keyboard[Duality.Input.Key.Number2])
            {
                this.camera.Pos = new Vector3(mother2.TransformComponent.Pos.Xy, this.camera.Pos.Z);
            }
        }
    }
}
