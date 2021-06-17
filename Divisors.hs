module Divisors where


divisors :: Integral a => a -> Int
divisors x = length [x `mod` n | n <- [1..50000], x `mod` n == 0 ]

