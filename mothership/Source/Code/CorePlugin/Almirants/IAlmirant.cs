using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace naves.Almirants
{
    public interface IAlmirant
    {
        void Refresh(RadarSystem radar, Hangar hangar);
    }
}
