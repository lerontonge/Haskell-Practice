
-- takes 2 lists and returns the difference between them

difference :: (Foldable t, Eq a) => [a] -> t a -> [a]
difference  xs ys = filter (`notElem` ys) xs 