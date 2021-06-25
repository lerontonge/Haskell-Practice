import Data.Char as Char
import Data.List (intercalate)
import qualified Data.Text as T
import Data.Array

testWords = "HelloThereWorldHowAreYouFL"

camel :: [Char] -> [[Char ]]
camel [] = []
camel list@(x:xs) = let (first, second) = break Char.isUpper xs
                   in (x:first):camel second


solution xs =  unwords  (camel xs)

