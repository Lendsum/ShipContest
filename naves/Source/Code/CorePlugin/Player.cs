using System;
using System.Collections.Generic;
using System.Linq;
using Duality.Components.Physics;
using Duality.Input;

using Duality;
using Duality.Components;
using Duality.Resources;

namespace naves
{
    [RequiredComponent(typeof(RigidBody)), RequiredComponent(typeof(Transform))]
    public class Player : Component, ICmpUpdatable, ICmpInitializable
    {
        private GameObject camera;
        public ContentRef<Prefab> BulletPrefab { get; set; }

        public void OnInit(InitContext context)
        {
            this.camera = this.GameObj.ParentScene.FindGameObject<Camera>();
        }

        public void OnShutdown(ShutdownContext context)
        {
        }

        public void OnUpdate()
        {
            RigidBody body = this.GameObj.GetComponent<RigidBody>();
            if (DualityApp.Keyboard[Key.Left])
            {
                body.ApplyLocalForce(-0.001f * body.Inertia);
            }
            else if (DualityApp.Keyboard[Key.Right])
            {
                body.ApplyLocalForce(0.001f * body.Inertia);
            }
            else
            {
                body.AngularVelocity -= body.AngularVelocity * 0.1f * Time.TimeMult;
            }

            if (DualityApp.Keyboard[Key.Up])
            {
                body.ApplyLocalForce(Vector2.UnitY * -0.2f * body.Mass);
            }
            else if (DualityApp.Keyboard[Key.Down])
            {
                body.ApplyLocalForce(Vector2.UnitY * 0.2f * body.Mass);
            }

            if (DualityApp.Keyboard[Key.Space] && BulletPrefab != null)
            {
                Transform transform = GameObj.GetComponent<Transform>();
                GameObject bullet = BulletPrefab.Res.Instantiate(transform.Pos, transform.Angle);

                Scene.Current.AddObject(bullet);
            }

            this.camera.Transform.Pos = new Vector3(this.GameObj.Transform.Pos.Xy, this.camera.Transform.Pos.Z);

        }
    }
}
