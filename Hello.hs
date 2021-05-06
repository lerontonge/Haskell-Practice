module Hello where


hello :: String 
hello = "Hello There"

name :: String 
name = "Pablo Escobar"


main :: IO()
main = putStrLn hello


main' :: IO()
main' = putStrLn name


product :: Int -> Int -> Int 
product x y = x * y


num1 :: Int
num1 = 3029 

num2 :: Int 
num2 = 2938

sum' :: Int 
sum' = num1 + num2 

added :: IO()
added = print sum' 

falseStatement :: String 
falseStatement = "This Sentence is false"

printStatement :: IO()
printStatement = putStrLn falseStatement


denyStatement :: String 
denyStatement = "No, its not"

printDenial :: IO()
printDenial = putStrLn denyStatement


wrongStatement :: String
wrongStatement = "One plus two is not seven"

printWrongStatement :: IO()
printWrongStatement = putStrLn wrongStatement



num :: Integer
num = 20938

printNum :: IO()
printNum = print num


january :: Integer
january = 1
february :: Integer
february = 2
march :: Integer
march = 3
april :: Integer
april = 4
may :: Integer
may = 5
june :: Integer
june = 6
july :: Integer
july = 7
august :: Integer
august = 8
september :: Integer
september = 9
october :: Integer
october = 10
november :: Integer
november = 11
december :: Integer
december = 12
currentYear :: Integer
currentYear = 2021

monthAddedToYear :: Integer
monthAddedToYear = april + currentYear

monthPlusYearResult :: IO()
monthPlusYearResult = print monthAddedToYear



myAge :: Integer
myAge = 35

momsAge :: Integer
momsAge = 50

myAgeXMomsAge :: Integer 
myAgeXMomsAge = myAge * momsAge

printAgeproduct :: IO()
printAgeproduct = print myAgeXMomsAge


addition :: Int 
addition = 5+7+8+9

printAddition :: IO()
printAddition = print addition

subtraction :: Int 
subtraction = 1098 - 999

printSubtraction :: IO()
printSubtraction = print subtraction

plateNum :: [Int]
plateNum = [123,456,789,012,345,678,901,234,567,890]

addNums ::  [Int] -> Int 
addNums  [] = 0
addNums (x:xs) = x + addNums xs



addedNums :: Int
addedNums = addNums plateNum 


printAddedNums :: IO()
printAddedNums = print addedNums 




plates = 123 + 2656 + 56983 + 6384
plate2 = 345
plate3 = 433
plate4 = 983






addedPlates = plates + plate2 + plate3 + plate4



printPlates = addedPlates 









