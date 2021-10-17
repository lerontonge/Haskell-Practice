
{-}

main :: IO()
main = do
    print (1 + 2)
    putStrLn "10"
    print (negate (-1))
    print ((+) 0 blah)
    where blah = negate 1  

f :: Int -> String 
f = undefined 

g :: String -> Char 
g = undefined 

h :: Int -> Char 
h x = g(f x)

-}


data A
data B
data C

{- q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e x = w (q x)
-}

data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z 
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform (x, y) = (xz x, yz y)


munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge xToy yTowz a = fst (yTowz (xToy a))  