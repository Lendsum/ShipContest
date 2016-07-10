using System;
using System.Collections.Generic;
using System.Linq;
using Duality.Components.Physics;
using Duality.Input;

using Duality;
using Duality.Components;
using Duality.Resources;
using Duality.Components.Renderers;
using naves.Almirants;

namespace naves
{
    [RequiredComponent(typeof(RigidBody)), RequiredComponent(typeof(Transform)), RequiredComponent(typeof(TextRenderer))]
    public class MothershipController : ShipController, ICmpUpdatable, ICmpInitializable, ICmpCollisionListener
    {
        public ContentRef<Prefab> ShipPrefab { get; set; }
        TextRenderer Text;

        public List<Player> ShipsReleased { get; private set; }


        public IAlmirant Almirant;
        public RadarSystem Radar;
        public Hangar Hangar;
        public int ArmyFaction { get; set; }

        public void OnInit(InitContext context)
        {
            if (context != InitContext.Activate) return;
            base.Init(this.GameObj.GetComponent<Transform>(), 500, ShipTypeEnum.MotherShip, this.ArmyFaction);

            this.Text = this.GameObj.GetComponent<TextRenderer>();
            this.ShipsReleased = new List<Player>();

            this.Radar = new RadarSystem(this);
            this.Hangar = new Hangar();
        }

        public void OnUpdate()
        {
            if (this.Hangar.shipsReady < 20)
            {
                this.Hangar.shipsReady += Time.TimeMult * 0.004f;
            }

            this.Almirant.Refresh(this.Radar, this.Hangar);
            this.GoReleaseShipOrders();
            this.Text.Text = new Duality.Drawing.FormattedText() { SourceText = this.GetText() };
        }

        public void GoReleaseShipOrders()
        {
            foreach (var order in this.Hangar.Orders)
            {
                // if you try to release a ship without be ready, it harms you.
                if (this.Hangar.shipsReady < 1)
                {
                    this.Life = this.Life - 50;
                }
                else
                {
                    if (this.ShipsReleased.Count > 20) return;

                    Vector2 shipPos;
                    int desviation = 120;
                    float angle = 0;
                    switch (order.Position)
                    {
                        case 1:
                            shipPos = new Vector2(this.TransformComponent.Pos.X, this.TransformComponent.Pos.Y - desviation);
                            angle = 0;
                            break;
                        case 2:
                            shipPos = new Vector2(this.TransformComponent.Pos.X + desviation, this.TransformComponent.Pos.Y);
                            angle = (float)Math.PI * 0.5F;
                            break;
                        case 3:
                            shipPos = new Vector2(this.TransformComponent.Pos.X, this.TransformComponent.Pos.Y + desviation);
                            angle = (float)Math.PI * 1F;
                            break;
                        case 4:
                            shipPos = new Vector2(this.TransformComponent.Pos.X - desviation, this.TransformComponent.Pos.Y);
                            angle = (float)Math.PI * 1.5F;
                            break;
                        default:
                            shipPos = new Vector2(this.TransformComponent.Pos.X, this.TransformComponent.Pos.Y - desviation);
                            break;
                    }

                    GameObject ship = ShipPrefab.Res.Instantiate(new Vector3(shipPos, 0), angle);
                    Player newPlayer = ship.GetComponent<Player>();
   
                    newPlayer.Commander = order.ShipCommander;
                    newPlayer.MotherShip = this;
                    newPlayer.ArmyFaction = this.ArmyFaction;
                    newPlayer.KeyboardControl = false;

                    this.ShipsReleased.Add(newPlayer);
                    Scene.Current.AddObject(ship);
                    this.Hangar.shipsReady = this.Hangar.shipsReady - 1;
                }

                this.Hangar.Orders = new List<ReleaseOrder>();
            }
        }

        private string GetText()
        {
            return this.Hangar.shipsReady.ToString() + " - " + this.Life.ToString();
        }
    }
}
