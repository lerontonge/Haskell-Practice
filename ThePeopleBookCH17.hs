module ThePeopleBookCH17 where
import qualified Data.List as L

type Name = String
type Year = Int
type Weight = Float
type EyeColor = String

-- Person type written in record syntax
data Person = Person
    { personFirstName :: Name,
      personMiddleName :: Name,
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
people = [ Person "Issac" "Jimbo" "Newton" 180 "Green" 1643,
           Person "Leonard" "James" "Euler" 192 "Brown" 1707,
           Person "Ada" "Lou" "Lovelace" 123 "Black" 1815,
           Person "Alan" "Alex" "Turing" 198 "Blue" 1912,
           Person "Haskell" "Jermaine" "Curry" 200 "Black" 1900,
           Person "John" "Delroy" "von Neumann" 180 "Green" 1903,
           Person "Lipot" "Kevin" "Fejer" 175 "Black" 1880]

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

peopleToFirstName :: [Person] -> [String]
peopleToFirstName [] = []
peopleToFirstname (x:xs) = personFirstName x : peopleToFirstName xs

-- getting a list of first names

lastNames :: [String]
lastNames = map personLastName people


--getting a list of last lastNames

firstNames :: [String]
firstNames = map personFirstName people

--sorting a list in alphabetical order

sortedLastNames :: [String]
sortedLastNames = L.sort lastNames

--Sorting a list in reverse alphbetical order

reverseSortedLastNames :: [String]
reverseSortedLastNames = L.sortBy reverseCompare lastNames
  where reverseCompare = flip compare

-- Sorting the list by a field in the list using ( SortOn )

sortedPeopleByFirstNames :: [Person]
sortedPeopleByFirstNames = L.sortOn personFirstName people

-- Function that takes a year and a person and works out how many years ago from that year that person was born

yearsSinceBirthYear :: Year -> Person -> Int
yearsSinceBirthYear currYear person = currYear - yearOfBirth person

-- Mapping the list 'people' to prior function
wasBornYearsAgo :: [Int]
wasBornYearsAgo = map (yearsSinceBirthYear 2021) people


earliestYearOfBirth :: [Person] -> Int
earliestYearOfBirth people = minimum $ map yearOfBirth people


bornFirst :: [Person] -> Person
bornFirst = L.minimumBy compareBirthYears
  where compareBirthYears x y = compare (yearOfBirth x) (yearOfBirth y)