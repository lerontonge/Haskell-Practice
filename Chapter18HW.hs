module Chapter18HW where


type Year = Int
type Age = Int 
type Month = Int 
type Day = Int
data DateOfBirth = DateOfBirth Year Month Day 
--Current Month
currMonth :: Month
currMonth = 5
--Current Year
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
    let birthMonth = read monthOfBirth :: Month
    let birthYear  = read yearofBirth :: Year

    --calculate Age by accuracy of Month
    if birthMonth >= currMonth 
    then do 
        let currAge = currYear - 1 - birthYear 
        putStrLn $ "Your Age Is: " ++ show currAge 
    else do
        let currAge = currYear - birthYear
        putStrLn $ "Your Age Is: " ++ show currAge 
    --putting  a break in the display before loop
    putStrLn "..........................."   
    -- Looping the main function 
    main


