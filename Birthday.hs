
module Birthday where
type Day = Int 
type Month = Int  
type Year = Int

{- data Birthday = Birthday
    { personDayOfBirth :: Day
    , personMonthofBirth :: Month
    , personYearOfBirth :: Year}
    deriving (Show)
-}

main :: IO()
main = do 
    putStrLn "Enter Day of Birth: "
    dayOfBirth <- getLine
    putStrLn "Enter Month of Birth"
    monthOfBirth <- getLine
    putStrLn "Enter Year of Birth"
    yearOfBirth <- getLine
    putStrLn "--------THANK YOU---------"
 
    let dayOfB = read dayOfBirth :: Day
    let monthOfB = read monthOfBirth :: Month
    let yearOfB = read yearOfBirth :: Year 
     
    birthday dayOfB monthOfB yearOfB

birthday :: Day -> Month -> Year -> IO()
birthday d m y = print $ "Your Date of Birth Is " ++ show d ++ " " ++  show m ++ " " ++ show y 

