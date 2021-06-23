module EasyLines where


factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

choose :: Integer -> Integer -> Integer
choose n k = factorial n `div` (factorial k * factorial (n - k))


easyLines :: Integer -> Integer
easyLines n = choose (2*n) n
