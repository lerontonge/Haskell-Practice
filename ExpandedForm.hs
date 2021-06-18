import Numeric
import Data.String
import Numeric.Natural
import Data.Char ( digitToInt )
import Data.Maybe
import Data.List
import Data.Maybe


testNum :: Int
testNum = 123456

testList :: [Int]
testList = [1,2,3,4,5,6]

digitsToList :: Int -> [Int]
digitsToList 0 = []
digitsToList x = digitsToList (x `div`10) ++ [ x `mod` 10]

expandDigits :: (Integral b, Num a) => b -> a
expandDigits x = 10^x 

splitNum :: [Int]
splitNum = digitsToList testNum

expls :: [Int]
expls = reverse (map expandDigits [0..length splitNum-1])


multiplyLists :: [Int]
multiplyLists = zipWith (*) expls splitNum

expandedForm :: [Int] -> String 
expandedForm [] = []
expandedForm [x] = show x
expandedForm (x:xs) =  show x ++ " + " ++ expandedForm xs
                       