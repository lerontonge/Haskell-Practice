data Player = Player { team :: String,
                       ppg :: Double }
                       deriving (Show)

sumPpg :: Player -> Player -> Double
sumPpg Player{ppg = x } Player{ppg = y} =  x + y


iverson :: Player
iverson = Player { team = "76ers", ppg = 11.2 }
jordan :: Player
jordan  = Player { team = "bulls", ppg = 20.2 }