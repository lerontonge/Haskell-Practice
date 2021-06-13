import Data.Char ( toLower ) 

dupecheck :: Eq a => [a] -> Bool
dupecheck [] = True
dupecheck (x:xs) = not( x `elem` xs) && dupecheck xs

isIsogram :: String -> Bool
isIsogram = dupecheck . map toLower 