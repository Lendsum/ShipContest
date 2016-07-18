using Duality;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace naves.Almirants
{
    public class AlmirantFran : IAlmirant
    {
        CardinalInitialPosition directionToRelease = CardinalInitialPosition.North;
        IEnumerable<CardinalInitialPosition> allPossibleDirections = Enum.GetValues(typeof(CardinalInitialPosition)).Cast<CardinalInitialPosition>();
        List<CardinalInitialPosition> bestDirections;

        int attackShipsReleased = 0;
        int defShipsReleased = 0;

        public string Name => "Fran";

        public void Refresh(RadarSystem radar, Hangar hangar)
        {
            FranStaticOrchestrator.MyMothershipRadar = radar;

            FranStaticOrchestrator.NotifyOfEnemyMothershipInRadar(radar);
            if (hangar.ShipsReady > 1)
            {
                //...After 3 attack ships, the 4th will be a def ship.
                bool releaseDefShip = attackShipsReleased != 0 && attackShipsReleased % 2 == 0;

                ICommander newShip;
                if (releaseDefShip)
                {
                    newShip = new FranCommanderDef();
                }
                else
                {
                    newShip = new FranCommanderAt();
                }

                NewDirection(releaseDefShip);

                hangar.Orders.Add(new ReleaseOrder((int)directionToRelease, newShip));
                attackShipsReleased++;
                if (releaseDefShip) defShipsReleased++;
            }
        }

        private void NewDirection(bool isDefShip)
        {
            if (!FranStaticOrchestrator.MyMothershipPositionDetermined)
            {
                var newDirection = (int)directionToRelease + 1;
                if (newDirection > 4) newDirection = 1;
                directionToRelease = (CardinalInitialPosition)newDirection;
            }
            else
            {
                if (bestDirections == null)
                {
                    bestDirections = FranStaticOrchestrator.BestCardinals();
                    var
                    worseDirections = allPossibleDirections.Where(x => !bestDirections.Contains(x)).ToList();
                }
                if (isDefShip)
                {
                    //...We want to release def ships counter-clockwise
                    var indexDesired = 4 - (defShipsReleased % 4);
                    directionToRelease = allPossibleDirections.ElementAt(indexDesired % 4);
                }
                else
                {
                    directionToRelease = bestDirections.First(x => x != directionToRelease);
                }
            }
        }
    }
}
