
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
humanAge (Cat _ _ catAge) 
             | catAge <= 0 = 0
             | catAge == 1 = 15
             | catAge == 2 = 25
             | otherwise  = 25 + (catAge - 2) * 4

street :: [House]
street = 
    [ House 1 (Cat "George" Siamese 10)
    , House 2 (Cat "Mr Bigglesworth" Persian 5)
    , House 3 (Cat "Mr Tinkles" Birman 1)
    , House 4 (Cat "Puddy" Burmese 3)
    , House 5 (Cat "Tiger" Bengal 12)
    , House 6 (Cat "The Ninja" RussianBlue 12)
    , House 7 (Cat "Mr Tinklestein" NorwegianForest 8)
    , House 8 (Cat "Plain Cat" MainCoon 9 )
    , House 9 (Cat "Shabooby" Sphynx 7)
    , House 10 (Cat " Crazy Ears Sam" CornishRex 3) ]
    
getCatFromHouse :: House -> Cat 
getCatFromHouse = (House _ Cat)

getHumanAgeFromCat :: House -> Cat
getHumanAgeFromCat = humanAge . getCatFromHouse

                                                                                                                                                                                                                                                                                                                                         `


