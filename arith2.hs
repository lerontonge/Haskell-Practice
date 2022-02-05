
add x y = x + y

addPF = (+)

addOne = \x -> x + 1


addOnePF = (+1)


main :: IO()
main = do
    print (0 :: Int)
    print (add 1 0)
    print (addOne 0)
    print (addOnePF 0)
    print ((addOne . addOne) 0)
    print ((addOnePF . addOnePF) 0)
    print (negate (addOne 0))
    print ((negate . addOne) 0)
    print ((addOne . addOne . addOne. negate . addOne) 0)


mTH x y z = x * y * z

mTH' x y = \z -> x * y * z 

mTH'' x = \y -> \z -> x * y * z

mTH''' = \x -> \y -> \z -> x * y * z


addOneIfOdd n = case odd n of 
    True -> f n
    False -> n 
    where f = \n -> n + 1


--Rewrite using lambda syntax
addFive x y  = (if x > y then y else x) + 5

--lambda

addFive' = \x -> \y -> (if x > y then y else x) + 5


mFlip f x y = f y x 












