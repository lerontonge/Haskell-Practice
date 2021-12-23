
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


