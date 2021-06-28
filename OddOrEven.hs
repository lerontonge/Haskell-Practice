


oddOrEven xs 
                | abs (sum xs  `mod` 2) == 1 = "odd"
                | abs (sum xs  `mod` 2) == 0 = "even"
