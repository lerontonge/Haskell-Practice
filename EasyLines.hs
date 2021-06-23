module EasyLines where



--factorial
factorial :: Integer -> Integer
factorial n = product [1..n]

-- Binomial coefficient formula
choose :: Integer -> Integer -> Integer
choose n k = fromIntegral $ factorial n `div` (factorial k * factorial (n - k))

-- sum of square of binomial coefficient 
easyLine :: Integer -> Integer
easyLine n = choose (2 * n) n
