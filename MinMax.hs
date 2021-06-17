
test :: (Integer, Integer)
test = minMax [1,2,3,4,5]


minMax :: (Ord a) => [a] -> (a, a)
minMax xs = (minimum xs, maximum xs)


