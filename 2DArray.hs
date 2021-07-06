{-Description:
Calculate the product of all the sum of the rows.

-The length and width of the array may be different (from 1 to 5).

-All integers are between 1 and 9.

Example :

[0, 4, 8, 5], 0+4+8+5 = 17

[2, 4, 7, 1], 2+4+7+1 = 14

[7, 5, 3, 2], 7+5+3+2 = 17

[2, 9, 2, 6], 2+9+2+6 = 19

17 * 14 * 17 * 19 = 76874
-}
 --

result :: [[Int]] -> Int
result lst = product $ map sum lst 
              