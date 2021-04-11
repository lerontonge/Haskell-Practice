module SocketsAndPlugsCH6 where

plus5 :: Int -> Int 
plus5 x = x + 5

plus6 :: Int -> Int
plus6 y = y + 6

plus7 :: Int -> Int 
plus7 z = z + 7

plus8 :: Int -> Int -> Int -> Int 
plus8 = \x y z -> x + y + z + 8

--result :: IO()
--result = print plus8 (plus7 (plus6 (plus5 5)))

plus6'' :: Int -> Int 
plus6'' number = (6+) number

plusSeven :: Int -> Int 
plusSeven = (+7)

sumFrom1To :: Integral a => a -> a
sumFrom1To 0 = 0
sumFrom1To n = n + sumFrom1To(n-1)

isEven :: Integral a => a -> Bool
isEven n = mod n 2 == 0

