import Data.Bifoldable (bifoldl', biall)
import Distribution.Simple.BuildTarget (BuildTargetProblem)

--f x y = x + y + 3


myConcat :: [Char] -> [Char] -- Inferred Type
myConcat x = x ++ "yo"


myMult :: Fractional a => a -> a -- Inferred Type
myMult x = (x/3) * 5


myCom :: Int -> Bool -- Inferred Type
myCom x = x > length[1..10]

myAlph :: Char -> Bool -- Inferred Type
myAlph  x = x < 'z'





--x=5


--y=x+5


--w = y * 10


--z y = y*10


--f =  y / 4




x' = "julie"
y' = " <3"
z' = "Haskell"

f' = x' ++ y' ++ z'


bigNum =  (^5) $ 10

wahoo = bigNum * 10


x'' = print

y'' = print "woohoo!"

z'' = x'' "hello world"


--a = (+)
--b = 5
--c = a b 10
--d = a c 200

--a' = 12 + b'
--b' = 10000 * c



--functionH :: [a] -> a
--functionH (x:_) = x

functionC :: Ord a => a -> a -> Bool
functionC x y =
    if x > y then True else False


functionS :: (a, b) -> b
functionS (x,y) = y

myFunc :: (x -> y) -> (y -> z) -> c -> (a, x) -> (a, z)
myFunc xToY yToZ _ (a, x) = (a, (yToZ (xToY x)))

i :: a -> a
i g = g


c :: a -> b -> a
c g h = g


c'' :: b -> a -> b
c'' m k = m

c' :: a -> b -> b
c' n j = j

r :: [a] -> [a]
r g = g

co :: (b -> c) -> (a -> b) -> a -> c
co bToc aTob a =  bToc (aTob a)

a :: ( a -> c ) -> a -> a
a aToc k = k

a' :: (a -> b) -> a -> b 
a' aTob = aTob 