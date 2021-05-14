module Chapter18HW where


type Year = Int
type Age = Int 
type Month = Int 

currMonth :: Month
currMonth = 5

currYear :: Year
currYear = 2021
 

main :: IO()
main = do
    --getting input from the user
    putStrLn "Enter Your Birth Year"
    yearofBirth <- getLine
    putStrLn "Enter your Birth Month"
    monthOfBirth <-getLine 
    --Turning string input into integers
    let birthMonth = read monthOfBirth ::Int
    let birthYear  = read yearofBirth :: Int

    --calculate Age by accuracy of Month
    if birthMonth >= currMonth 
    then do 
        let currAge = currYear - 1 - birthYear 
        putStrLn $ "Your Age Is: " ++ show currAge 
    else do
        let currAge = currYear - birthYear
        putStrLn $ "Your Age Is: " ++ show currAge 

