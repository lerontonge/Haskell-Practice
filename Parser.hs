{-# LANGUAGE BlockArguments #-}
--module Parser where
module ShowParser (parseShow) where
import Text.ParserCombinators.Parsec
import qualified Text.ParserCombinators.Parsec.Token as P
import Text.ParserCombinators.Parsec.Language
import Data.List(intercalate)


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

parens = P.parens lexer

-- <?xml version="1.0" encoding="utf-8"?>

xml_header :: String
xml_header = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

-- <tag> ... </tag>

otag t = "<"++t++">"
ctag t = "</"++t++">"
tag t v = concat [otag t,v,ctag t]

-- <tag attr1="..." attr2="...">

tagAttrs :: String -> [(String,String)] -> String -> String
tagAttrs t attrs v = concat [
                        otag (unwords $ [t]++(map(\(k,v)->concat [k,"=\"",v,"\""]) attrs))
                        ,v
                        ,ctag t
                        ]

joinNL :: [String] -> String
joinNL ls = intercalate "\n" ls 

parseShow :: String -> String
parseShow = runParser showParser

list_Parser = do
    ls <- brackets $ commaSep showParser
    return $ tag "list" $ joinNL $ map (tag "list-elt") ls

tuple_parser = do
    ls <- parens $ commaSep showParser
    return $ tag "tuple" $ unwords $ map (tag "tuple-elt") ls

record_parser = do
    ti <- type_identifier
    ls <- braces $ commaSep kvparser
    return $ tagAttrs "record" [("name",ti)] (joinNL ls)

kvparser = do
    k <- identifier
    symbol "="
    tagAttrs "elt" [("key",k)] <$> showParser

type_identifier = do
    fst <- oneOf ['A' .. 'Z']
    rest <- many alphaNum
    whiteSpace
    return $ fst:rest

adt_parser = do
    tag "adt" <$> type_identifier

quoted_string = do
    s <- stringLiteral
    return $ "\""++s++"\""

number' = do
    n <- integer
    return $ show n


showParser :: Parser String 
showParser = do
        list_parser <|> -- [ ... ]
         tuple_parser <|> -- ( ... )
         try record_parser <|> -- MkRec { ... }
         adt_parser <|> -- MkADT ...
         number <|>    -- signed integer
         quoted_string <?> "Parse error"
 
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
main = print [rec1, rec2]