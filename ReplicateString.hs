import Data.List (replicate)

repeatStr :: Int -> String -> String
repeatStr n str = concat (replicate n str)

