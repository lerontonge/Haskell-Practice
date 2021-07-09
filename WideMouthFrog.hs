import Data.Char

mouthSize :: String -> String
mouthSize str | map toLower str == "alligator" = "small"
              | otherwise = "wide"