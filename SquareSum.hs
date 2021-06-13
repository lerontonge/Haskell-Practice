module SquareSum where

squareSum :: [Integer] -> Integer
squareSum [] = 0
squareSum (x:xs) = square x + squareSum xs 
                      where square x = x*x

-- 
-- squareSum (x:xs) = x ^ 2 + squareSum xs 
