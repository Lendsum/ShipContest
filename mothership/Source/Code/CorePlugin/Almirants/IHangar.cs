using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace naves.Almirants
{
    public interface IHangar
    {
        float ShipsReady { get; }
        void AddOrder(ReleaseOrder order);
    }
}
