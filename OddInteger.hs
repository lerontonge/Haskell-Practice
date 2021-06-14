module OddInteger where


import Data.List ( sort, group, maximumBy, genericLength)
import Data.Function(on)
import Data.Ord ( comparing )

testIntegers :: [Int]
testIntegers = [2,3,3,4,4,5,4,5,4]

--  Given a list, find the [Int] that appears an 
--   odd number of times. The tests will always
--   provide such a number, and the list will
--   always contain at least one element.
findOdd :: [Int] -> Int 
findOdd xs = oddElement maxOddList
    
        where
             --Returns the head of the largest list with odd length
             oddElement x = head x 
             --Returns the largest list of odd length
             maxOddList = maximumBy (comparing length) oddList
             --Filters Lists containing odd length
             oddList = filter (odd.length) groupedAndSorted
             --Groups sorted List into a list of lists
             groupedAndSorted = group sorted
             --Sorts list in order
             sorted = sort xs





main :: Int
main = findOdd testIntegers



