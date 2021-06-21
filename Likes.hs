

likes :: [String] -> String
likes  [] = "no one likes this"
likes  [x] = x ++ " likes this"
likes  (x:y:xs)
                | length xs >= 2 = x ++ ", "++ y ++ " and " ++ show (length xs) ++" others like this"
                | length xs == 1 = x ++ ", "++ y ++ " and " ++ last xs ++ " like this"
                | otherwise = x ++ " and "++ y ++ " like this"