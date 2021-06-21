import Numeric ()
import Data.String ()
import Numeric.Natural ()
import Data.Char ()
import Data.List ()


digitsToList :: Int -> [Int]
digitsToList 0 = []
digitsToList x = digitsToList (x `div`10) ++ [ x `mod` 10]

expandDigits :: Int -> Int
expandDigits x = 10^x

expandList :: [Int] -> [Int]
expandList xs = reverse (map expandDigits [0..length xs-1])

multiplyLists :: [Int] -> [Int] -> [Int]
multiplyLists x y = zipWith (*) y x

expandedForm' :: [Int] -> String
expandedForm' [] = []
expandedForm' [0] = []
expandedForm' [x] = show x
expandedForm' (x:xs) = show x ++ "+" ++ expandedForm' xs

filterZeros :: Int -> [Int]
filterZeros n =  filter (/= 0) (multiplyLists (expandList (digitsToList n)) (digitsToList n))

expandedForm :: Int -> String
expandedForm n = expandedForm' (filterZeros n)








