module Reverse where

curry' :: [Char]
curry' = "Curry is Awesome"


rvrs :: String -> String 
rvrs x = wrd3 ++ wrd2 ++ wrd1
        where wrd1 = take 5 x
              wrd3 = drop 9 x
              wrd2 = drop 5 wrd4
                    where wrd4 = take 9 x

main :: IO()
main = print $ rvrs curry'