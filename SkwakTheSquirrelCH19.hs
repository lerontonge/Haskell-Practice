module SkwakTheSquirrelCH19 where

data GameObject = Player
                | Acorn
    deriving (Eq, Show)

data Room = 
    Room Description [GameObject]
        deriving (Show)
        
type Description = String 
type Inventory = [GameObject]
type GameMap = [Room]
type GameState = (GameMap, Inventory)


initialState :: GameState
initialState = ([Room "You are inside a tree." [Player]
                ,Room "You are outside of a tree." [Acorn]]
                ,[])

main :: IO()
main = do
    putStrLn "Welcome to Skwak the Squirrel"
    putStrLn "You are a squirrel."
    gameLoop initialState

gameLoop :: GameState ->IO()
gameLoop (rooms, currentInv) = do
    let currentRoom = 
        case findRoomWithPlayer rooms of 
        Just r -> r
        Nothing -> error $ "Somehow the player " 
                         ++ "ended up outsode the map"
        possibleCmds =
            validCommands currentRoom currentInv
    if playerWon (rooms, currentInv)
        then gameOverReseart
        else do
            describeWorld currentRoom currentInv possibleCmds takeActionThenLoop
                currentRoom currentInv possibleCmds rooms
                        
