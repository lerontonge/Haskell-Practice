powersOfTwo :: Int -> [Int]
powersOfTwo n =  [2^n | n <- [0..n]]