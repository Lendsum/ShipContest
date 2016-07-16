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
    public class Player : ShipController, ICmpUpdatable, ICmpInitializable, ICmpCollisionListener
    {
        public ContentRef<Prefab> BulletPrefab { get; set; }
        
        private float m_FiringDelayCounter;
        public float FiringDelay { get; set; } = 10f;
        public bool KeyboardControl { get; set; } = true;
        public TextRenderer text;
        
        public float AvailablePower { get; set; } = 100f;
        public float AceleratePower { get; set; } = 0f;
        public float WeaponPower { get; set; } = 0f;
        
        NavigationSystem navigation;
        PowerSystem power;
        RadarSystem radarSystem;

        public ICommander Commander { get; set; }
        public MothershipController MotherShip { get; set; }
        public int ArmyFaction { get; set; }

        public void OnInit(InitContext context)
        {
            if (context != InitContext.Activate) return;
            text = this.GameObj.GetComponent<TextRenderer>();
            this.navigation = new NavigationSystem(this.GameObj);
            this.power = new PowerSystem(this);
            this.radarSystem = new RadarSystem(this);
            this.Init(this.GameObj.GetComponent<Transform>(), 100, ShipTypeEnum.AttackShip, this.ArmyFaction) ;
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
                    this.power.Acelerate(this.power.Available);
                }
                else if (DualityApp.Keyboard[Key.Down])
                {
                    this.power.Acelerate(20, true);
                }

                if (DualityApp.Keyboard[Key.Space] && BulletPrefab != null && m_FiringDelayCounter > FiringDelay)
                {
                    this.power.Fire(20);
                }
            }
            else
            {
                if (this.Commander!=null)
                {
                    this.Commander.Refresh(this.radarSystem, this.power, this.navigation);
                }
            }

            #endregion  

            if (this.AceleratePower != 0f)
            {
                body.ApplyLocalForce(Vector2.UnitY * -(this.AceleratePower / 2) * body.Mass);
                this.AceleratePower = 0f;
            }

            if (this.power.RotateRight!=0f)
            {
                body.ApplyLocalForce(this.power.RotateRight/10000 * body.Inertia);
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

            
            this.text.Text = new Duality.Drawing.FormattedText() { SourceText = this.GetText()};

        }

        private string GetText()
        {
            if (navigation != null && navigation.Position != null && this.power != null && this.radarSystem != null && this.radarSystem.Enemies!=null)
            {
                return " - P:" + this.power?.Available + " Fac:" + this.Faction.ToString();
            }

            return string.Empty;
        }
    }
}
