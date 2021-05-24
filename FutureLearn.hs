module FutureLearn where

nums :: [Int]
nums = [1..10]

--function to act on individual item
add :: Int -> Int
add = (+ 1)

--recursive funcion to apply the 'add' funtion to a list of integers 
evenNums :: [Int] -> [Int]
evenNums = map add

reverseNums :: [Int]
reverseNums = reverse nums  

addedReversed :: [Int] 
addedReversed = evenNums reverseNums

addedList :: [Int]
addedList = evenNums nums 

main :: IO()
main = do
    print addedList

