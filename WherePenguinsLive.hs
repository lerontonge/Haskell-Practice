

data WherePenguinsLive =
      Galapagos
    | Antarctica
    | Australia
    | SouthAfrica
    | SouthAmerica
    deriving (Eq, Show)


--using newtype instead of data 
newtype Penguin = Peng WherePenguinsLive 
    deriving (Eq, Show)

-- is it South Africa? If so, return True
isSouthAfrica :: WherePenguinsLive -> Bool 
isSouthAfrica SouthAfrica = True 
isSouthAfrica Galapagos = False 
isSouthAfrica Australia = False
isSouthAfrica SouthAmerica = False 
isSouthAfrica Antarctica = False 

--Better Implementation of the above 
isSouthAfrica' :: WherePenguinsLive -> Bool 
isSouthAfrica' SouthAfrica = True
isSouthAfrica' _ = False  




