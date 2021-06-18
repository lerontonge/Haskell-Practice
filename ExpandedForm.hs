import Numeric ()
import Data.String ()
import Numeric.Natural ()
import Data.Char ( digitToInt )
import Data.List ()
import Data.Maybe ()


digitsToList :: Int -> [Int]
digitsToList 0 = []
digitsToList x = digitsToList (x `div`10) ++ [ x `mod` 10]

expandDigits :: Int -> Int
expandDigits x = 10^x 

expLs :: [Int] -> [Int]
expLs xs = reverse (map expandDigits [0..length xs-1])

multiplyLists :: [Int] -> [Int] -> [Int]
multiplyLists x y = zipWith (*) y x 

expandedForm' :: [Int] -> String 
expandedForm' [] = []
expandedForm' [x] = show x
expandedForm' (x:xs) =  show x ++ " + " ++ expandedForm' xs


expandedForm :: Int -> String
expandedForm n = expandedForm' (multiplyLists expandedList (digitsToList n))
            where expandedList =expLs (digitsToList n)