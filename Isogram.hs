import Data.Char ( toLower )


isIsogram :: String -> Bool
isIsogram  = dupecheck . map toLower
     where dupecheck [] = True
           dupecheck (x:xs) = not (x `elem` xs) && dupecheck xs