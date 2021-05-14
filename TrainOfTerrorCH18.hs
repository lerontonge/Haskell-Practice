module TrainOfTerrorCH18 where

type Level = (Integer, Integer)

levels :: [Level]
levels = concat $ map pairsForNum [3,5..12]
    where pairsForNum num = zip [2..12] $ repeat num

-- Function to work out what level the player is at    
levelNumber :: [a] -> Int
levelNumber remainingLevels = totalLevels - levelsLeft
    where totalLevels = length levels +1
          levelsLeft = length remainingLevels

jumpingFutility :: IO()
jumpingFutility = do
    putStrLn "You jump out of the train"
    putStrLn "You fail and die"
    trainLoop levels

eatingFutility :: IO()
eatingFutility = do
    putStrLn "You see a delicious cupcake"
    putStrLn "You eat it. Its a time travel cupcake"
    trainLoop levels

main ::IO()
main = do
    putStrLn "Suddenly, you wake up. Oh No, you're on..."
    putStrLn "The Times-Table Train of Terror!"
    putStrLn "Try to get to the end"
    trainLoop levels


trainLoop :: [Level] -> IO()
trainLoop [] = putStrLn "You Won Well Done"
trainLoop remainingLevels @ (currentLevel : levelsAfterThisOne) = 
    do
        let currentLevelNumber = levelNumber remainingLevels
            (num1,num2) = currentLevel
        
        putStrLn $ "You Are In Train Carriage "
                    ++ show currentLevelNumber
                    ++ " of " ++ (show $ length levels)
        putStrLn "Do You Want To: "
        putStrLn "1. Go to the next Carriage?"
        putStrLn "2. Jump out of the train"
        putStrLn "3. Eat Some food"
        putStrLn "q. Quit"
        activity <- getLine 
        case activity of
            "1" -> 
                do
                    putStrLn $ "You try to go to the next carriage." ++ " The door is locked."
                    putStrLn "Answer this question to unlock the door: "
                    putStrLn $ "What is " ++ show num1 ++" times "++ show num2 ++ "?"
                    answer <- getLine
                    if answer == (show $ num1 * num2)
                        then do 
                            putStrLn "The Lock Is Opened!"
                            trainLoop levelsAfterThisOne
                        else do 
                            putStrLn $ "Wrong. You try to open the lock," ++ " but it won't open."
                            trainLoop remainingLevels
            "2" -> jumpingFutility
            "3" -> eatingFutility
            "q" -> putStrLn $ "You decide to quit." ++ " Thanks for playing. Bye!"
            _ -> do
                putStrLn "Thant makes no sense"
                trainLoop remainingLevels 