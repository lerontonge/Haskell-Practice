

likes :: [String] -> String
likes  [] = "no one likes this"
likes  [x] = x ++ " likes this"
likes  (x:y:xs) 
                | (length xs) >= 2 = x ++ ", "++ y ++ " and " ++ show (length xs) ++" others like this"
                | otherwise = x ++ ", "++ y ++ " and " ++ likes xs ++ "like this"