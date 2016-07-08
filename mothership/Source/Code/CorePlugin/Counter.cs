using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace naves
{
    public static class Counter
    {
        private static int ShipCounter = 0;
        public static int GetNextShip()
        {
            return Interlocked.Increment(ref ShipCounter);
        }
    }
}
