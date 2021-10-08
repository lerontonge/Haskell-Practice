module Absolute where
myAbs :: Integer -> Integer
myAbs x = if x < 0 
          then x + (x*(-2))
          else x 