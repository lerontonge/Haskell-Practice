module Penguins where
import Distribution.Types.GenericPackageDescription.Lens (_Impl)
--mport Penguins (isSouthAfrica)


data WherePenguinsLive = Galapagos | Antarctica | Australia | SouthAfrica | SouthAmerica
    deriving (Eq, Show)

data Penguin = Peng WherePenguinsLive
    deriving (Eq, Show)


{-
--THIS IS REDUNDANT 

isSouthAfrica :: WherePenguinsLive -> Bool 
isSouthAfrica SouthAfrica = True 
isSouthAfrica Galapagos = False
isSouthAfrica Antarctica = False
isSouthAfrica Australia = False
isSouthAfrica SouthAmerica = False 
-}

isSouthAfrica :: WherePenguinsLive -> Bool
isSouthAfrica SouthAfrica = True
isSouthAfrica _ = False


gimmieWhereTheyLive :: Penguin -> WherePenguinsLive
gimmieWhereTheyLive (Peng whereitlives) = whereitlives

humboldt = Peng SouthAmerica
gentoo = Peng Antarctica
macaroni = Peng Antarctica
little = Peng Australia
galapagos = Peng Galapagos

galapagosPenguin :: Penguin -> Bool
galapagosPenguin (Peng Galapagos) = True
galapagosPenguin _                = False

antarcticPenguin :: Penguin -> Bool
antarcticPenguin (Peng Antarctica) = True
antarcticPenguin _                 = False

antarcticOrGalapagos :: Penguin -> Bool
antarcticOrGalapagos p = galapagosPenguin p || antarcticPenguin p





