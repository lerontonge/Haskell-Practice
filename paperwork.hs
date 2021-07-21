paperwork :: Int -> Int -> Int
paperwork n m | n < 0 || m < 0 = 0
              | otherwise = n * m 