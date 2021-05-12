module ThePeopleBookCH17 where
import qualified Data.List as L

type Name = String
type Year = Int
type Weight = Float
type EyeColor = String
data Person = Person
    { personFirstName :: Name,
      personLastName :: Name,
      personWeight :: Weight,
      personEyeColor :: EyeColor,
      yearOfBirth :: Year}
    deriving (Show)

{- blaise :: Person 
blaise = Person { personFirstName = "Blaise",
                  personLastName  = "Pascal",
                  personWeight = 180,
                  personEyeColor = "Black",
                  yearOfBirth = 1623} -}

people :: [Person]
people = [ Person "Issac" "Newton" 180 "Green" 1643,
           Person "Leonard" "Euler" 192 "Brown" 1707,
           Person "Ada" "Lovelace" 123 "Black" 1815,
           Person "Alan" "Turing" 198 "Blue" 1912,
           Person "Haskell" "Curry" 200 "Black" 1900,
           Person "John" "von Neumann" 180 "Green" 1903,
           Person "Lipot" "Fejer" 175 "Black" 1880]

-- Chapter 17.6
{- firstAfter1900 :: Maybe Person
firstAfter1900 = L.find (\(Person _ _ _ _ year) -> year >= 1900) people -}

firstAfter1900' :: Maybe Person
firstAfter1900' = L.find (\person -> yearOfBirth person >= 1900) people


firstNameBeginsWithL :: Person -> Bool
firstNameBeginsWithL p =
  case personFirstName p of
    'L':_ -> True
    _     -> False

makeNewListWithOnlyLPeople :: [Person] -> [Person]
makeNewListWithOnlyLPeople [] = []
makeNewListWithOnlyLPeople (x:xs)
  | firstNameBeginsWithL x = x : makeNewListWithOnlyLPeople xs
  | otherwise = makeNewListWithOnlyLPeople xs

makeNewListWithOnlyLPeople' :: [Person] -> [Person]
makeNewListWithOnlyLPeople' = filter firstNameBeginsWithL

peopleThatBeginWithL' :: [Person]
peopleThatBeginWithL'= makeNewListWithOnlyLPeople people

firstLetterIs :: Char -> String -> Bool 
firstLetterIs c "" = False 
firstLetterIs c (x:_) = testf
   where testf = c == x

firstNameBeginsWith :: Char -> Person -> Bool 
firstNameBeginsWith c p = 
     firstLetterIs c firstName 
   where firstName = personFirstName p

peopleThatBeginWithL :: [Person]
peopleThatBeginWithL = filter (firstNameBeginsWith 'L') people

