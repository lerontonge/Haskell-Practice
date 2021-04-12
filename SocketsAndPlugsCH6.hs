module SocketsAndPlugsCH6 where

plus5 :: Int -> Int 
plus5 x = x + 5

plus6 :: Int -> Int
plus6 y = y + 6

plus7 :: Int -> Int 
plus7 z = z + 7

plus8 :: Int -> Int -> Int -> Int 
plus8 = \x y z -> x + y + z + 8

--result :: IO()
--result = print plus8 (plus7 (plus6 (plus5 5)))

plus6'' :: Int -> Int 
plus6'' number = (6+) number

plusSeven :: Int -> Int 
plusSeven = (+7)

sumFrom1To :: Int -> Int 
sumFrom1To 0 = 0
sumFrom1To n = n + sumFrom1To(n-1)

isEven :: Int -> Bool
isEven n = mod n 2 == 0

intFive :: Int 
intFive = 5

floatTenPointThree :: Float 
floatTenPointThree = 10.3

-- Error Because not the same type
--errorResult = intFive + floatTenPointThree

result = fromIntegral intFive + floatTenPointThree


message :: String -> String 
message name =
    case name of 
        "Dave" -> "I can't do that"
        "Sam" -> "Play it again"
        _ -> "Hello There"

main :: IO()
main = putStrLn (message "Dave")


    

