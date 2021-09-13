module HPFPCh3 where

import Text.Parsec.Char (letter)
curry' :: String
curry' = "Curry is awesome"


thirdLetter :: String -> Char 
thirdLetter x = x !! 2




main :: IO()
main = do
    putStrLn (curry' ++ "!")
    print (curry' !! 4)
    putStrLn (drop 9 curry')
    print (thirdLetter curry')







