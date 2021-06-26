
-- takes 2 lists and returns the differens between them

difference :: (Foldable t, Eq a) => [a] -> t a -> [a]
difference  xs ys = filter (`notElem` ys) xs 