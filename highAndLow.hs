
--Convert string to Integer

stringToInt :: String -> [Int]
stringToInt strlst = map read (words strlst) :: [Int]

minAndMax :: (Foldable t, Ord a) => t a -> [a]
minAndMax xs =  [(minimum xs) , (maximum xs)]

highAndLow :: String -> String
highAndLow input =  unwords (map show (minAndMax(stringToInt input)))