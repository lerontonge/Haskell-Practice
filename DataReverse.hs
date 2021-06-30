

import Data.List

splitUp :: Int -> [a] -> [[a]]
splitUp _ [] = []
splitUp n l
  | n > 0 = take n l : splitUp n (drop n l)
  | otherwise = error "Negative or zero n"



dataReverse :: [a] -> [a]
dataReverse xs = concat (reverse (splitUp n xs)) 
            where n = 8
