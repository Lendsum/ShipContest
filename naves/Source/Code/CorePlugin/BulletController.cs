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

        public float LifeTime { get; set; } = 100f;
        public GameObject Creator { get; set; }

        public float Damage { get; set; }
        public ScoreText ScoreText { get; private set; }

        public void OnInit(InitContext context)
        {
            if (context != InitContext.Activate) return;
            m_Transform = GameObj.GetComponent<Transform>();
            m_RigidBody = GameObj.GetComponent<RigidBody>();
            this.ScoreText=GameObj.ParentScene.FindComponent<TextRenderer>().GameObj.GetComponent<ScoreText>();
        }

        public void OnUpdate()
        {
            m_RigidBody.LinearVelocity = Vector2.FromAngleLength(m_Transform.Angle, Speed);
            m_LifetimeCounter += Time.TimeMult;
            if (m_LifetimeCounter > LifeTime)
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

            var playerAffected=rigidBodyArgs.CollideWith.GetComponent<Player>();
            if (playerAffected != null)
            {
                playerAffected.Life -= this.Damage;
                if (playerAffected.Life < 0f)
                {
                     Scene.Current.RemoveObject(rigidBodyArgs.CollideWith);

                    // update score.
                    this.ScoreText.Text = this.ScoreText.Text + " - " + playerAffected.Commander?.Name;
                }
            }
        }

        public void OnCollisionEnd(Component sender, CollisionEventArgs args)
        {
        }
        public void OnCollisionSolve(Component sender, CollisionEventArgs args)
        {
        }
    }
}
