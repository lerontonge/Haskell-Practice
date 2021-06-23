makeNegative :: (Num a, Ord a) => a -> a
makeNegative 0 = 0
makeNegative n = if n < 0 
                 then n
                 else negate n 