using System;
using System.Collections.Generic;

namespace naves.Almirants
{
    public class Hangar : IHangar
    {
        public float shipsReady;
        public List<ReleaseOrder> Orders=new List<ReleaseOrder>();

        public float ShipsReady
        {
            get
            {
                return this.shipsReady;
            }
        }

        public void AddOrder(ReleaseOrder order)
        {
            this.Orders.Add(order);
        }
    }
}