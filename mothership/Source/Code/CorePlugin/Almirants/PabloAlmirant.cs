using Duality;
using System;
using System.Collections.Generic;
using System.Linq;

namespace naves.Almirants
{
    public class PabloAlmirant : IAlmirant
    {
        static Random rnd = new Random();

        public string Name => "Pablo";

        public RadarPoint EnemyMothership;
        public Dictionary<Guid, CustomShip> releasedShips = new Dictionary<Guid, CustomShip>();

        public RadarPoint[] almirantEnemies;

        public Vector2 MothershipPosition;

        public bool FirstShip = true;

        public int LastOrder = 0;

        public bool Order1Full = false;
        public bool Order2Full = false;
        public bool Order3Full = false;
        public bool Order4Full = false;

        int releasedShipsNum = 0;
        float shipsReady = 0;
        bool shipReleased;

        List<int> availableOrders = new List<int> { 1, 2, 3, 4 };

        public void Refresh(RadarSystem radar, Hangar hangar)
        {
            var now = DateTime.Now;
            if (hangar.ShipsReady < shipsReady && shipReleased)
            {
                releasedShipsNum += 1;
            }

            almirantEnemies = radar.Enemies.Where(x => x.Type == ShipTypeEnum.AttackShip).ToArray();

            if (MothershipPosition != new Vector2(0) && availableOrders.Count == 4)
            {
                availableOrders = new List<int>();

                if (MothershipPosition.Y > 200) availableOrders.Add(1);
                else if (MothershipPosition.Y < -200) availableOrders.Add(3);
                else
                {
                    availableOrders.Add(1);
                    availableOrders.Add(3);
                }

                if (MothershipPosition.X > 200) availableOrders.Add(4);
                else if (MothershipPosition.X < -200) availableOrders.Add(2);
                else
                {
                    availableOrders.Add(2);
                    availableOrders.Add(4);
                }
            }

            var array = releasedShips.ToArray();
            foreach (var releasedShip in array)
            {
                FirstShip = false;

                if ((now - releasedShip.Value.LastUpdate > new TimeSpan(0, 0, 0, 0, 100)) && releasedShip.Value.LastUpdate != new DateTime())
                {
                    releasedShips.Remove(releasedShip.Key);
                    if (releasedShip.Value.Commander.GetType() == typeof(PabloDefenseCommander))
                    {
                        if (releasedShip.Value.Order == 1) Order1Full = false;
                        if (releasedShip.Value.Order == 2) Order2Full = false;
                        if (releasedShip.Value.Order == 3) Order3Full = false;
                        if (releasedShip.Value.Order == 4) Order4Full = false;
                    }
                }
            }

            if (hangar.ShipsReady > 1)
            {
                var order = availableOrders[rnd.Next(availableOrders.Count)];
                LastOrder = order;

                if ((order == 1 && Order1Full) || (order == 2 && Order2Full) || (order == 3 && Order3Full) || (order == 4 && Order4Full))
                {
                    order = availableOrders.First(x => x != order);
                    hangar.Orders.Add(new ReleaseOrder(order, new PabloAttackCommander(this)));
                }
                else if (FirstShip) hangar.Orders.Add(new ReleaseOrder(order, new PabloAttackCommander(this)));
                else if (order % 2 == 0) hangar.Orders.Add(new ReleaseOrder(order, new PabloAttackCommander(this)));
                else hangar.Orders.Add(new ReleaseOrder(order, new PabloDefenseCommander(this)));

                shipsReady = hangar.ShipsReady;
                shipReleased = true;
            }
            else
            {
                shipReleased = false;
            }
        }
    }

    public class CustomShip
    {
        public DateTime LastUpdate { get; set; }
        public Vector2 Position { get; set; }

        public ICommander Commander { get; set; }

        public int Order { get; set; }
    }
}
