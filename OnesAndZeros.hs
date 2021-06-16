import Data.List



binList :: [Int]
binList = [1,0,0,1]


convert :: [Int] -> Int
convert xs = sum $ map (2^) $ elemIndices 1 $ reverse xs
