{-# OPTIONS_GHC -Wno-incomplete-patterns #-}




oddOrEven :: Integral a => [a] -> [Char]
oddOrEven lst   | null lst  = "even"
                | lst == [0] = "even"
                | abs (sum lst  `mod` 2) == 1 = "odd"
                | abs (sum lst  `mod` 2) == 0 = "even"

