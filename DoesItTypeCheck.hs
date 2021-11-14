module DoesItTypeCheck where
import Distribution.Simple.Utils (xargs)
import System.Posix.Terminal (ControlCharacter(Interrupt))
import Data.List



-- 1.

data Person = Person Bool
    deriving Show 

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)


--2.

data Mood = Blah | Woot
    deriving (Ord, Eq, Show) 

settleDown :: Mood -> Mood
settleDown x = if x == Woot
                then Blah
                else x 

--3.    
type Subject = String 
type Verb = String 
type Object = String 

data Sentence = Sentence Subject Verb Object
    deriving (Eq, Show)

s1 :: Object -> Sentence
s1 = Sentence "dogs" "drool"
s2 :: Sentence
s2 = Sentence "Julie" "loves" "dogs"

data Rocks = 
    Rocks String deriving (Ord, Eq, Show)

data Yeah = 
    Yeah Bool deriving (Ord, Eq, Show)

data Papu =
    Papu Rocks Yeah
    deriving (Ord, Eq, Show)


-- phew = Papu "chases" True 
truth = Papu (Rocks "chomskydoz") (Yeah True)

equalityForall :: Papu -> Papu -> Bool 
equalityForall p p' = p == p'

comparePapus :: Papu -> Papu -> Bool 
comparePapus p p' = p > p' 

i :: Num a => a
i = 1

f :: RealFrac a => a 
f = 1.0


freud :: Ord a => a -> a
freud x = x

freud' :: Int -> Int 
freud' x = x

myX :: Int
myX = 1

sigmund :: Int -> Int
sigmund x = myX

sigmund' :: Int -> Int   
sigmund' x = myX


jung :: [Int] -> Int
jung xs = head (sort xs)

young :: [Char] -> Char
young xs = head (sort xs)

mySort :: [Char] -> [Char]
mySort = sort 

signifier :: [Char] -> Char
signifier xs = head (mySort xs)






