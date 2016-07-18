using Duality;
using System.Collections.Generic;
using System.Linq;

namespace naves.Almirants
{
    public static class FranStaticOrchestrator
    {
        #region Enemy mothership

        public static bool EnemyMothershipFound
        {
            get
            {
                return EnemyMothershipPosition != null;
            }
        }

        public static RadarPoint EnemyMothershipPosition { get; set; }

        public static void NotifyOfEnemyMothershipInRadar(RadarSystem radar)
        {
            if (!EnemyMothershipFound)
            {
                if (radar.Enemies != null && radar.Enemies.Any())
                {
                    var enemyMothership = radar.Enemies.FirstOrDefault(x => x.Type == ShipTypeEnum.MotherShip);
                    if (enemyMothership != null)
                        EnemyMothershipPosition = enemyMothership;
                }
            }

            //if (allRadars == null)
            //{
            //    allRadars = new List<RadarSystem>() { radar };
            //}
            //else
            //{
            //    allRadars.Add(radar);
            //}
        }

        #endregion

        #region My mothership

        public static bool MyMothershipPositionDetermined
        {
            get
            {
                return MyMothershipPosition != new Vector2(0);
            }
        }

        public static Vector2 MyMothershipPosition { get; set; }

        public static RadarSystem MyMothershipRadar { get; set; }

        public static void SetMyMothershipPosition(Vector2 myPos)
        {
            MyMothershipPosition = myPos;
            SetEnemyMothershipPositionCandidates(myPos);
        }

        public static List<CardinalInitialPosition> BestCardinals()
        {
            var listToReturn = new List<CardinalInitialPosition>(2);
            if (!MyMothershipPositionDetermined) return listToReturn;

            var coordenateX = MyMothershipPosition.X;
            var coordenateY = MyMothershipPosition.Y;
            if (coordenateX < 0 && coordenateY < 0)
            {
                listToReturn.Add(CardinalInitialPosition.East);
                listToReturn.Add(CardinalInitialPosition.South);
            }
            else if (coordenateX < 0 && coordenateY >= 0)
            {
                listToReturn.Add(CardinalInitialPosition.East);
                listToReturn.Add(CardinalInitialPosition.North);
            }
            else if (coordenateX >= 0 && coordenateY < 0)
            {
                listToReturn.Add(CardinalInitialPosition.West);
                listToReturn.Add(CardinalInitialPosition.South);
            }
            else if (coordenateX >= 0 && coordenateY >= 0)
            {
                listToReturn.Add(CardinalInitialPosition.West);
                listToReturn.Add(CardinalInitialPosition.North);
            }
            return listToReturn;
        }

        #endregion

        public static Vector2 PossibleEnemyMothershipPosition()
        {
            if (EnemyMothershipPositionCandidates == null ||
                !EnemyMothershipPositionCandidates.Any()) return new Vector2 { X = 0, Y = 0 };

            var position = EnemyMothershipPositionCandidates.First();

            //...Subtract the selected element from the list.
            EnemyMothershipPositionCandidates =
                EnemyMothershipPositionCandidates.Where(pos => pos.X != position.X || pos.Y != position.Y).ToList();

            return position;
        }

        public static Vector2 SendShipToNextQuadrant(Vector2 currentCandidate)
        {
            if (!MyMothershipPositionDetermined) return new Vector2(0);

            var coordenateX = currentCandidate.X;
            var coordenateY = currentCandidate.Y;
            if (coordenateX < 0 && coordenateY < 0)
            {
                return new Vector2 { X = 800, Y = coordenateY };
            }
            else if (coordenateX < 0 && coordenateY >= 0)
            {
                return new Vector2 { X = coordenateX, Y = -800 };
            }
            else if (coordenateX >= 0 && coordenateY < 0)
            {
                return new Vector2 { X = coordenateX, Y = 800 };
            }
            else if (coordenateX >= 0 && coordenateY >= 0)
            {
                return new Vector2 { X = -800, Y = coordenateY };
            }
            return new Vector2(0);
        }

        private static List<Vector2> EnemyMothershipPositionCandidates { get; set; }

        private static void SetEnemyMothershipPositionCandidates(Vector2 myPos)
        {
            if (MyMothershipPosition == null) return;
            var myPosX = myPos.X;
            var myPosY = myPos.Y;

            //...First get the symmetric positions regarding out own mothership
            var symmetric1 = new Vector2(-myPosX, myPosY);
            var symmetric2 = new Vector2(myPosX, -myPosY);
            var symmetric3 = new Vector2(-myPosX, -myPosY);

            //...Then set midpoints between the 3 above and the closer axis
            var halfMyPosX = myPosX / 2;
            var halfMyPosY = myPosY / 2;

            var midWay1 = new Vector2(-halfMyPosX, halfMyPosY);
            var midWay2 = new Vector2(halfMyPosX, -halfMyPosY);
            var midWay3 = new Vector2(-halfMyPosX, -halfMyPosY);

            EnemyMothershipPositionCandidates = new List<Vector2>(6) { symmetric1, symmetric2, symmetric3, midWay1, midWay2, midWay3 };
        }
    }

    public enum CardinalInitialPosition
    {
        North = 1,
        East = 2,
        South = 3,
        West = 4,
    }
}
