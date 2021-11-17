
mTh x y z = x * y * z


mTh' = \x -> \y -> \z -> x * y * z 



mTh'' x = \y -> \z -> x * y * z 


addOneIfOdd n = case odd n of
    True -> f n 
    False -> n 
    where f = \n -> n + 1


addFive x y = (if x > y then y else x) + 5

addFive' = \x -> \y -> (if x > y then y else x) + 5 

mFlip f = \x -> \y -> f y x 

mflip' f y x = f y x 
