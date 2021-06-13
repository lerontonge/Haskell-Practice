module StringsEndsWith (solution) where

import Data.List ( isSuffixOf )

solution :: String -> String -> Bool
solution _ "" = True
solution s1 s2 = s2 `isSuffixOf` s1


