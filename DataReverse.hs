
{-
A stream of data is received and needs to be reversed.

Each segment is 8 bits long, meaning the order of these segments needs to be reversed, for example:

11111111  00000000  00001111  10101010
 (byte1)   (byte2)   (byte3)   (byte4)
should become:

10101010  00001111  00000000  11111111
 (byte4)   (byte3)   (byte2)   (byte1)
The total number of bits will always be a multiple of 8.

The data is given in an array as such:

[1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,1,0,1,0,1,0]
Note: In the C and NASM languages you are given the third parameter which is the number of segment blocks.


-}
import Data.List

splitUp :: Int -> [a] -> [[a]]
splitUp _ [] = []
splitUp n l
  | n > 0 = take n l : splitUp n (drop n l)
  | otherwise = error "Negative or zero n"



dataReverse :: [a] -> [a]
dataReverse xs = concat (reverse (splitUp n xs)) 
            where n = 8


{-


--ALTERNATE SOLUTIONS 


import Data.List.Split (chunksOf)

dataReverse :: [Int] -> [Int]
dataReverse = concat . reverse . chunksOf 8


-----OR------


dataReverse :: [Int] -> [Int]
dataReverse = concat . reverse . split
  where
    split [] = []
    split xs = take 8 xs : split (drop 8 xs)

-}