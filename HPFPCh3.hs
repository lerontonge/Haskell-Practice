module HPFPCh3 where

import Text.Parsec.Char (letter)
curry' :: String
curry' = "Curry is awesome"



main :: IO()
main = do
    putStrLn (curry' ++ "!")
    print (curry' !! 4)
    putStrLn (drop 9 curry')





