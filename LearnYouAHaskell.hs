module LearnYouAHaskell where

main :: IO ()
main = putStrLn hello

hello :: String
hello = "Hello, Haskell!"

doubleMe :: Int -> Int
doubleMe x = x + x

doubleUs :: Int -> Int -> Int
doubleUs x y = x*2 + y*2

doubleUs' :: Int -> Int -> Int
doubleUs' x y = doubleMe x + doubleMe y

-- **************************************************************************

a = 1235 :: Int
b = 1234 :: Int

isEqual :: Bool
isEqual = a == b

xs = isEqual

addOrMul :: Int
addOrMul = if xs 
           then a+b
           else a*b


-- ******************************************************************************---

doubleSmallNumber :: Int -> Int
doubleSmallNumber x = if x > 100
                      then x
                      else x*2

doubleSmallNumber' :: Int -> Int
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

-- **************************************************************************--

n = 50 :: Integer

factorial :: Integer
factorial = product [1..n]


printFunc :: IO()
printFunc = print factorial

-- *****************************************************************************

-- \_ -> True :: Bool -> Bool
-- (\_ -> \_ + 1) :: Int -> Int\



magicCoin :: Bool -> Bool
magicCoin = \_ -> True

newCoin :: Bool
newCoin = magicCoin False

newCoin' :: Bool-> Bool
newCoin' _ = newCoin

newCoinAgain :: Bool
newCoinAgain = magicCoin newCoin

newCoinAgain' :: Bool
newCoinAgain' = magicCoin(magicCoin False)

{- magicBool :: Bool (Bool->Bool)
magicBool = \_ magicCoin -}

-- *************************************************************************--

f :: Integer -> Integer
f x = x + 1

 -- (\x y z -> (2 * \x+y * z))

-- (\xs -> xs + 1)--Simpler

-- OR

f' :: Integer -> Integer -> Integer -> Integer
f' x y z = 2 * x + y * z

f'' :: Integer -> Integer
f'' xa = xa + 1


-- 
