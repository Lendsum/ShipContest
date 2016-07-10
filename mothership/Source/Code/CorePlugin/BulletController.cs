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
    public class BulletController : Component, ICmpUpdatable, ICmpInitializable, ICmpCollisionListener
    {
        private Transform m_Transform;
        private RigidBody m_RigidBody;
        public float Speed { get; set; } = 30f;
        private float m_LifetimeCounter;

        public float LifeTime { get; set; } = 20f;
        public GameObject Creator { get; set; }

        public float Damage { get; set; }
        public ScoreText ScoreText { get; private set; }

        ShipController playerCreator;

        public void OnInit(InitContext context)
        {
            if (context != InitContext.Activate) return;
            m_Transform = GameObj.GetComponent<Transform>();
            m_RigidBody = GameObj.GetComponent<RigidBody>();
            this.ScoreText=GameObj.ParentScene.FindComponent<TextRenderer>().GameObj.GetComponent<ScoreText>();
            playerCreator = Creator.GetComponent<ShipController>();
        }

        public void OnUpdate()
        {
            m_RigidBody.LinearVelocity = Vector2.FromAngleLength(m_Transform.Angle, Speed);
            m_LifetimeCounter += Time.TimeMult;
            if (m_LifetimeCounter > LifeTime || !InRage())
            {
                //GameObj is a reference to this Components parent GameObject
                Scene.Current.RemoveObject(GameObj);
            }
        }

        public void OnShutdown(ShutdownContext context)
        {
        }
        public void OnCollisionBegin(Component sender, CollisionEventArgs args)
        {
            //Do not collide with whatever created the bullet
            if (args.CollideWith == Creator) return;

            //We cast to RigidBodyCollisionEventArgs to get access to the info about the shapes involved.
            var rigidBodyArgs = args as RigidBodyCollisionEventArgs;
            if (rigidBodyArgs != null && rigidBodyArgs.OtherShape.IsSensor) return;
            if (rigidBodyArgs == null) return;


            Scene.Current.RemoveObject(GameObj);

            ShipController playerAffected=rigidBodyArgs.CollideWith.GetComponent<ShipController>();
            if (playerAffected != null)
            {
                playerAffected.Life -= this.Damage;
                if (playerAffected.Life < 0f)
                {
                    Scene.Current.RemoveObject(rigidBodyArgs.CollideWith);
                    var attackShip = playerAffected as Player;
                    if (attackShip != null)
                    {
                        var toRemove = attackShip.MotherShip.ShipsReleased.Where(x => x.Id == attackShip.Id).FirstOrDefault();
                        if (toRemove != null) attackShip.MotherShip.ShipsReleased.Remove(toRemove);
                    }
                }
            }
        }

        public bool InRage()
        {
            var distance = this.playerCreator.Position - this.m_Transform.Pos.Xy;
            var a = distance.X;
            var b = distance.Y;
            var hipo = Math.Sqrt((a * a + b * b));
            return hipo < 400;
        }

        public void OnCollisionEnd(Component sender, CollisionEventArgs args)
        {
        }
        public void OnCollisionSolve(Component sender, CollisionEventArgs args)
        {
        }
    }
}
