module TomatoFarm where
 
 import qualified Data.List as L 

 strains :: [String]
 strains = ["Indica - Purple Punch",
            "Indica - Grandaddy Purple",
            "Indica - White Rhino",
            "Indica - Bubba Kush",
            "Indica - Northern Lights",
            "Sativa - Jack Herer",
            "Sativa - Durban Poison",
            "Sativa - Green Crack",
            "Sativa - Strawberry Cough",
            "Sativa - Sour Diesel",
            "Hybrid - Gorilla Glue",
            "Hybrid - Wedding Cake",
            "Hybrid - Blue Dream",
            "Hybrid - Runtz",
            "Hybrid - Gelato"]
 {- THIS CAN BE WRITTEN MORE EFFICIENTLY 
    isIndica :: String -> Bool 
    isIndica (s:_) = s == 'I'
    isIndica _ = False   

    isSativa :: String -> Bool 
    isSativa (s':_) = s' == 'S'
    isSativa _ = False 

    isHybrid :: String -> Bool 
    isHybrid (s'':_) = s'' == 'H'
    isHybrid _ = False -}

 isStrain :: String -> Bool 
 isStrain (x:_)  
                  |x == 'S' = True
                  |x == 'I' = True
                  |x == 'H' = True
                  |otherwise   = False 

{- Type Declarations


 isSativa = True 
 isHybrid = True 
 isIndica = True -}

