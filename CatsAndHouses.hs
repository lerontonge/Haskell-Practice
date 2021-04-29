
data CatBreed = Siamese
              | Persian
              | Bengal
              | Sphynx
              | Burmese
              | Birman
              | RussianBlue
              | NorwegianForest
              | CornishRex
              | MaineCoon

type Name = String 
type Age = Integer 
data Cat = Cat Name CatBreed Age


type HouseNumber = Int 
data House = House HouseNumber Cat

humanAge :: Cat -> Age
humanAge = Cat _ _ catAge 
         | catAge <= 0 = 0
         | catAge == 1 = 15
         | catAge == 2 = 25
         | otherwise  = 25 + (catAge - 2) * 4

