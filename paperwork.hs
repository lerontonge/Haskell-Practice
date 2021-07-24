{-Your classmates asked you to copy some paperwork for them. You know that there are 'n' classmates and the paperwork has 'x' pages.

Your task is to calculate how many blank pages do you need. If n < 0 or x < 0 return 0.

Example:
n= 5, x=5: 25
n=-5, x=5:  0 -}

paperwork :: Int -> Int -> Int
paperwork n x | n < 0 || x < 0 = 0
              | otherwise = n * x 