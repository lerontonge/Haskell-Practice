--module Parser where
module ShowParser (parseShow) where
import Text.ParserCombinators.Parsec
import qualified Text.ParserCombinators.Parsec.Token as P 
import Text.ParserCombinators.Parsec.Language

data PersonRecord = MkPersonRecord {
    name :: String, 
    address :: Address,
    id :: Integer,
    labels :: [Label]
} deriving (Show)

data Address = MkAddress {
    line1 :: String,
    number :: Integer,
    street :: String,
    town :: String,
    postcode :: String
} deriving (Show)

data Label = Green | Red | Blue | Yellow deriving (Show)

--parens = P.parens lexer

xml_header :: [Char]
xml_header = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

otag t = "<"++t++">"
ctag t = "</"++t++">"
tag t v = concat [otag t,v,ctag t]


parseShow :: String -> String
parseShow = runParser showParser 



rec1 :: PersonRecord
rec1 = MkPersonRecord 
    "Wim Vanderbauwhede" 
    (MkAddress "School of Computing Science" 17 "Lilybank Gdns" "Glasgow" "G12 8QQ")
    557188
    [Green, Red]

rec2 :: PersonRecord
rec2 = MkPersonRecord 
    "Jeremy Singer" 
    (MkAddress "School of Computing Science" 17 "Lilybank Gdns" "Glasgow" "G12 8QQ")
    42
    [Blue, Yellow]



main :: IO ()
main = putStrLn $ show [rec1, rec2]