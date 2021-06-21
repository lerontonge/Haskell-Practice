

likes :: [String] -> String
likes  [] = "no one likes this"
likes  [x] = x ++ " likes this"
likes  (x:y:_) = x ++ " and " ++ y ++ " like this"
