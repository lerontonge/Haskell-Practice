

bindExp :: Integer -> String
bindExp x = let y = 5 in "the integer was: " ++ show x ++ " and y was: " ++ show y

triple :: Integer -> Integer
triple x = x + 3


dec = (\x -> x * 3) :: Integer -> Integer 


mth x y z = x * y * z

mth' x y = \z -> x * y * z

mth'' x = \y -> \z -> x * y * z

mth''' = \x -> \y -> \z -> x * y * z

{-Try to make it so it can still be loaded as a top-level def-
inition by GHCi. This will make it easier to validate your
answers.
a) Rewrite the f function in the where clause.-}


addOneIfOdd n = case odd n of 
    True  -> f n
    False -> n
    where f n = n +1

addOneIfOdd' n = case odd of
    True -> f n
    False -> n
    where f = \n -> n + 1

{-b) Rewrite the following to use anonymous lambda syn-
tax:-}

addFive x y = (if x > y then y else x) + 5

addFive'  = \x -> \y -> (if x > y then y else x) + 5

{-c) Rewrite the following so that it doesn’t use anony-
mous lambda syntax:-} 

mflip f = \x -> \y -> f y x

mflip' f y x = f y x 






