
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

    addition 

birthday :: Day -> Month -> Year -> IO()
birthday d m y = 
    do 
        print $ "Your Date of Birth Is " ++ show d ++ " " ++  show m ++ " " ++ show y 
        putStrLn "End Program"


addition :: IO()
addition = do
    putStrLn "Input First Num: "
    n1 <- getLine
    putStrLn "Input Second Num: "
    n2 <- getLine

    let num1 = read n1 :: Int
    let num2 = read n2 :: Int
    let added = num1 + num2 :: Int

    putStrLn $ show num1 ++ " plus " ++ show num2 ++ " equals " ++ show added