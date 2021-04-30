module TomatoFarm where
 
import qualified Data.List as L 

data StrainType = Indica 
                | Sativa 
                | Hybrid 
                | Ruderalis

data FloweringType = Photoperiod
                   | AutoFlower                

                


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
 -- THIS CAN BE WRITTEN MORE EFFICIENTLY 

isIndica :: String -> Bool 
isIndica (i:_) = i == 'I'
isIndica _ = False   

isSativa :: String -> Bool 
isSativa (s:_) = s == 'S'
isSativa _ = False 

isHybrid :: String -> Bool 
isHybrid (h:_) = h == 'H'
isHybrid _ = False 

{- isStrain :: String -> Bool 
isStrain (x:_)  
                  |x == 'S' = True
                  |x == 'I' = True
                  |x == 'H' = True
                  |otherwise   = False -}

isTypeIndica :: String -> String
isTypeIndica strain  = strain ++ " - " ++ isFor 
                    where isFor = if isType
                                      then "Is for Sleepy Time"
                                      else "Is Not for Sleepy Time"
                          isType = isIndica strain 

isTypeSativa :: String -> String
isTypeSativa strain  = strain ++ " - " ++ isFor 
                    where isFor = if isType
                                      then "Is for Happy Time"
                                      else "Is Not for Happy Time"
                          isType = isSativa strain 

isTypeHybrid :: String-> String
isTypeHybrid strain  = strain ++ " - " ++ isFor 
                    where isFor = if isType
                                      then "Is for Mellow Time"
                                      else "Is Not for Mellow Time"
                          isType = isHybrid strain 



isIndicaType :: [String] -> [String]
isIndicaType = map isTypeIndica

isSativaType :: [String] -> [String]
isSativaType = map isTypeSativa

isHybridType :: [String] -> [String]
isHybridType = map isTypeHybrid



indica :: [String]
indica = isIndicaType strains 

sativa :: [String]
sativa = isSativaType strains

hybrid :: [String]
hybrid = isHybridType strains



main :: IO ()
main = putStrLn (L.intercalate "\n" indica)




