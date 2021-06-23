import Data.List

gravityFlip :: Char -> [Int] -> [Int]
gravityFlip c lst 
                | c == 'R' = sort lst 
                | c == 'L' = reverse(sort lst)
                | otherwise = [] 