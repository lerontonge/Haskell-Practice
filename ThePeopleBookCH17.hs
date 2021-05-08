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

blaise :: Person 
blaise = Person { personFirstName = "Blaise",
                  personLastName  = "Pascal",
                  personWeight = 180,
                  personEyeColor = "Black",
                  yearOfBirth = 1623}

people :: [Person]
people = [ Person "Issac" "Newton" 180 "Green" 1643,
           Person "Leonard" "Euler" 192 "Brown" 1707,
           Person "Ada" "Lovelace" 123 "Black" 1815,
           Person "Alan" "Turing" 198 "Blue" 1912]

-- Chapter 17.6
firstAfter1900 :: Maybe Person
firstAfter1900 = L.find (\(Person _ _ _ _ year) -> year >= 1900) people 