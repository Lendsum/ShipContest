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
    public class BulletController : Component, ICmpUpdatable, ICmpInitializable, ICmpCollisionListener
    {
        private Transform m_Transform;
        private RigidBody m_RigidBody;
        public float Speed { get; set; } = 30f;
        private float m_LifetimeCounter;

        public float LifeTime { get; set; } = 100f;

        public void OnInit(InitContext context)
        {
            if (context != InitContext.Activate) return;
            m_Transform = GameObj.GetComponent<Transform>();
            m_RigidBody = GameObj.GetComponent<RigidBody>();
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
        }
        public void OnCollisionEnd(Component sender, CollisionEventArgs args)
        {
        }
        public void OnCollisionSolve(Component sender, CollisionEventArgs args)
        {
        }
    }
}
