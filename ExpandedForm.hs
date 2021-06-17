import Numeric
import Data.String
import Numeric.Natural
import Data.Char ( digitToInt )
import Data.Maybe
import Data.List
testNum :: Int
testNum = 123456

testList :: [Int]
testList = [1,2,3,4]

digitsToList :: Int -> [Int]
digitsToList 0 = []
digitsToList x = digitsToList (x `div`10) ++ [ x `mod` 10]

