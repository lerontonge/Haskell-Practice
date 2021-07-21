check :: Eq a => [a] -> a -> Bool
check l e = e `elem` l 