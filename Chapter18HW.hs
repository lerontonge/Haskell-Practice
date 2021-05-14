module Chapter18HW where


type Year = Int
type Age = Int 


currYear :: Year
currYear = 2021
 
    
main :: IO()
main = do
    putStrLn "Enter Your Birth Year"
    birthYear <- getLine
    let  currAge birthYear = currYear - birthYear
    putStrLn $ "Your Age Is: " ++  show $ currAge 

