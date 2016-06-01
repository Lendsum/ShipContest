using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace naves
{
    public class PowerSystem
    {
        private Player player;

        public PowerSystem(Player player)
        {
            this.player = player;
        }

        public float Available => player.AvailablePower;

        public void Acelerate(float power, bool reverse = false)
        {
            if (player.AvailablePower >= power)
            {
                player.AvailablePower -= power;
                player.AceleratePower = power;
                if (reverse) player.AceleratePower = -power;
            }
        }

        public void Fire(float power)
        {
            if (player.AvailablePower >= power)
            {
                player.WeaponPower = power;
                player.AvailablePower -= power;
            }
        }

        private float rotateRight = 0f;
        public float RotateRight
        {
            get
            {
                return this.rotateRight;
            }
            set
            {
                if (value > 10f || value < -10f) return;
                this.rotateRight = value;
            }
        }

    }
}
