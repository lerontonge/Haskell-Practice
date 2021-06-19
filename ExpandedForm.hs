import Numeric ()
import Data.String ()
import Numeric.Natural ()
import Data.Char ( digitToInt )
import Data.List ( intercalate )
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
expandedForm' [0] = []
expandedForm' [x] = show x
expandedForm' (x:xs) | x > 0 = show x ++ " + " ++ expandedForm' xs 
                     | otherwise = expandedForm' xs


expandedForm :: Int -> String
expandedForm n = expandedForm' (multiplyLists expandedList (digitsToList n))
            where expandedList = expLs (digitsToList n)


test :: Int -> String
test n = intercalate " + " multiplyLists expandedList (digitsToList n)
        where expandedList = expLs (digitsToList n) 
