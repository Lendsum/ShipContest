﻿using Duality;
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
        public ContentRef<Prefab> PlayerPrefab { get; set; }
        private Dictionary<int, Player> Players = new Dictionary<int, Player>();

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
            if (context != InitContext.Activate) return;

            var players = Scene.Current.FindComponents<Player>();
            foreach (var player in players.ToArray())
            {
                Scene.Current.RemoveObject(player.GameObj);
            }

            CreatePlayer(new Vector3(0, 0, 0), 0, true, true, 1);
            CreatePlayer(new Vector3(100, 100, 0), 0, false, false,2);
            CreatePlayer(new Vector3(200, 200, 0), 0, false, false, 3);
            CreatePlayer(new Vector3(300, 300, 0), 0, false, false, 4);


            players = Scene.Current.FindComponents<Player>();
        }

        public void OnShutdown(ShutdownContext context)
        {

        }

        public void OnUpdate()
        {
            if (DualityApp.Keyboard[Duality.Input.Key.Number1])
            {
                ActivateCamera(1);
            }

            if (DualityApp.Keyboard[Duality.Input.Key.Number2])
            {
                ActivateCamera(2);
            }

            if (DualityApp.Keyboard[Duality.Input.Key.Number3])
            {
                ActivateCamera(3);
            }

            if (DualityApp.Keyboard[Duality.Input.Key.Number4])
            {
                ActivateCamera(4);
            }
        }

        private void CreatePlayer(Vector3 pos, float angle, bool keyboard, bool cam, int number)
        {
            var player1 = PlayerPrefab.Res.Instantiate(pos, 0);
            var playerController = player1.GetComponent<Player>();
            playerController.KeyboardControl = keyboard;
            playerController.FollowCamera = cam;
            
            if (keyboard == false)
            {
                playerController.Commander = new ZombieCommander();
            }

            this.Players.Add(number, playerController);
            Scene.Current.AddObject(player1);
        }

        private void ActivateCamera(int player)
        {
            for (int i=1;i<=this.Players.Count;i++)
            {
                if (player==i)
                {
                    this.Players[i].FollowCamera = true;
                }
                else
                {
                    this.Players[i].FollowCamera = false;
                }
            }
        }
    }
}
