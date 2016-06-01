using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace naves
{
    /// <summary>
    /// 
    /// </summary>
    public interface ICommander
    {
        /// <summary>
        /// Refreshes the specified radar.
        /// </summary>
        /// <param name="radar">The radar.</param>
        /// <param name="power">The power.</param>
        /// <param name="navigation">The navigation.</param>
        void Refresh(RadarSystem radar, PowerSystem power, NavigationSystem navigation);
    }
}
