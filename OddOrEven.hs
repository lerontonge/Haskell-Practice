



oddOrEven :: Integral a => [a] -> [Char]
oddOrEven xs    
                | xs == []  = "even"
                | xs == [0] = "even"
                | abs (sum xs  `mod` 2) == 1 = "odd"
                | abs (sum xs  `mod` 2) == 0 = "even"
                
