module HPFPCh3 where

import Text.Parsec.Char (letter)

curry' :: String
curry' = "Curry is awesome"


thirdLetter :: String -> Char 
thirdLetter x = x !! 2

letterIndex :: Int -> Char 
letterIndex x = curry' !! (x - 1)
 
rvrs :: String 
rvrs = wrd3 ++ wrd2 ++ wrd1
        where wrd1 = take 5 curry'
              wrd3 = drop 9 curry'
              wrd2 = drop 5 wrd4
                    where wrd4 = take 9 curry' 

main :: IO()
main = do
    putStrLn (curry' ++ "!")
    print (curry' !! 4)
    putStrLn (drop 9 curry')
    print (thirdLetter curry')







