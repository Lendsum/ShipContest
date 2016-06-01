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
    public class Player : Component, ICmpUpdatable, ICmpInitializable, ICmpCollisionListener
    {
        private GameObject camera;
        public ContentRef<Prefab> BulletPrefab { get; set; }
        public bool FollowCamera { get; set; }
        private float m_FiringDelayCounter;
        public float FiringDelay { get; set; } = 10f;
        public bool KeyboardControl { get; set; } = true;
        TextRenderer text;

        public List<ZombieController> RadarTargets { get; set; } = new List<ZombieController>();

        public float AvailablePower { get; set; } = 100f;
        public float AceleratePower { get; set; } = 0f;
        public float WeaponPower { get; set; } = 0f;

        NavigationSystem navigation;
        PowerSystem power;
        private RadarSystem radarSystem;

        public void OnInit(InitContext context)
        {
            if (context != InitContext.Activate) return;
            this.camera = this?.GameObj?.ParentScene?.FindGameObject<Camera>();
            text = this.GameObj.GetComponent<TextRenderer>();
            this.navigation = new NavigationSystem(this.GameObj);
            this.power = new PowerSystem(this);
            this.radarSystem = new RadarSystem(this.GameObj);
        }

        public void OnShutdown(ShutdownContext context)
        {
        }

        public void OnUpdate()
        {
            this.AvailablePower += Time.TimeMult * 0.5f;
            if (this.AvailablePower > 200f) this.AvailablePower = 200f;
            
            RigidBody body = this.GameObj.GetComponent<RigidBody>();

            #region keyboardcontrol
            if (KeyboardControl)
            {
                if (DualityApp.Keyboard[Key.Left])
                {
                    body.ApplyLocalForce(-0.010f * body.Inertia);
                }
                else if (DualityApp.Keyboard[Key.Right])
                {
                    body.ApplyLocalForce(0.010f * body.Inertia);
                }
                else
                {
                    body.AngularVelocity -= body.AngularVelocity * 0.1f * Time.TimeMult;
                }

                if (DualityApp.Keyboard[Key.Up])
                {
                    //body.ApplyLocalForce(Vector2.UnitY * -0.20f * body.Mass);
                    this.power.Acelerate(50);
                }
                else if (DualityApp.Keyboard[Key.Down])
                {
                    this.power.Acelerate(20, true);
                }

                if (DualityApp.Keyboard[Key.Space] && BulletPrefab != null && m_FiringDelayCounter > FiringDelay)
                {
                    this.power.Fire(20);
                    //m_FiringDelayCounter = 0;
                    //Transform transform = GameObj.GetComponent<Transform>();
                    //GameObject bullet = BulletPrefab.Res.Instantiate(transform.Pos, transform.Angle);
                    //BulletController bulletController = bullet.GetComponent<BulletController>();
                    //bulletController.Creator = GameObj;
                    //Scene.Current.AddObject(bullet);
                }
            }

            #endregion  


            if (this.FollowCamera)
            {
                this.camera.Transform.Pos = new Vector3(this.GameObj.Transform.Pos.Xy, this.camera.Transform.Pos.Z);
            }

            if (this.AceleratePower != 0f)
            {
                body.ApplyLocalForce(Vector2.UnitY * -(this.AceleratePower / 5) * body.Mass);
                this.AceleratePower = 0f;
            }

            m_FiringDelayCounter += Time.TimeMult;
            if (this.WeaponPower > 0f)
            {
                if (m_FiringDelayCounter > FiringDelay)
                {
                    m_FiringDelayCounter = 0;
                    Transform transform = GameObj.GetComponent<Transform>();
                    GameObject bullet = BulletPrefab.Res.Instantiate(transform.Pos, transform.Angle);
                    BulletController bulletController = bullet.GetComponent<BulletController>();
                    bulletController.Damage = this.WeaponPower;
                    bulletController.Creator = GameObj;
                    Scene.Current.AddObject(bullet);
                    this.WeaponPower = 0;
                }
            }

            string text = this.navigation.Position.ToString() + " - " + this.navigation.Speed.ToString() + " - " + this.navigation.Angle.ToString()
                + " - P:" + this.power.Available + " - R:" + this.radarSystem.Enemies.Count().ToString();

            this.text.Text = new Duality.Drawing.FormattedText() { SourceText = text };

        }

        public void OnCollisionBegin(Component sender, CollisionEventArgs args)
        {
            //We cast to RigidBodyCollisionEventArgs to get access to the info about the shapes involved.
            var rigidBodyArgs = args as RigidBodyCollisionEventArgs;
            if (rigidBodyArgs != null && !rigidBodyArgs.OtherShape.IsSensor)
            {
                var otherPlayer = rigidBodyArgs.CollideWith.GetComponent<ZombieController>();
                if (otherPlayer != null && !RadarTargets.Contains(otherPlayer))
                {
                    RadarTargets.Add(otherPlayer);
                }
            }
        }

        public void OnCollisionEnd(Component sender, CollisionEventArgs args)
        {
            var rigidBodyArgs = args as RigidBodyCollisionEventArgs;
            if (rigidBodyArgs != null && !rigidBodyArgs.OtherShape.IsSensor)
            {
                var otherPlayer = rigidBodyArgs.CollideWith.GetComponent<ZombieController>();
                if (otherPlayer != null && RadarTargets.Contains(otherPlayer))
                {
                    RadarTargets.Remove(otherPlayer);
                }
            }
        }

        public void OnCollisionSolve(Component sender, CollisionEventArgs args)
        {

        }
    }
}
