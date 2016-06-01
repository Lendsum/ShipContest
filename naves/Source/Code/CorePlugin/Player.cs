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
    public class Player : Component, ICmpUpdatable, ICmpInitializable
    {
        private GameObject camera;
        public ContentRef<Prefab> BulletPrefab { get; set; }
        public bool FollowCamera { get; set; }
        private float m_FiringDelayCounter;
        public float FiringDelay { get; set; } = 10f;

        public void OnInit(InitContext context)
        {
            if (this.FollowCamera)
            {
                this.camera = this?.GameObj?.ParentScene?.FindGameObject<Camera>();
            }
            else
            {
                this.camera = null;
            }

            var text = this.GameObj.GetComponent<TextRenderer>();
            text.Text = new Duality.Drawing.FormattedText("hola");
        }

        public void OnShutdown(ShutdownContext context)
        {
        }

        public void OnUpdate()
        {
            m_FiringDelayCounter += Time.TimeMult;

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
                body.ApplyLocalForce(Vector2.UnitY * -0.20f * body.Mass);
            }
            else if (DualityApp.Keyboard[Key.Down])
            {
                body.ApplyLocalForce(Vector2.UnitY * 0.20f * body.Mass);
            }

            if (DualityApp.Keyboard[Key.Space] && BulletPrefab != null && m_FiringDelayCounter > FiringDelay)
            {
                m_FiringDelayCounter = 0;
                Transform transform = GameObj.GetComponent<Transform>();
                GameObject bullet = BulletPrefab.Res.Instantiate(transform.Pos, transform.Angle);
                BulletController bulletController = bullet.GetComponent<BulletController>();
                bulletController.Creator = GameObj;

                Scene.Current.AddObject(bullet);
            }


            if (this.camera != null)
            {
                this.camera.Transform.Pos = new Vector3(this.GameObj.Transform.Pos.Xy, this.camera.Transform.Pos.Z);
            }

        }
    }
}
