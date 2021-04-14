module ListsCH9 where

--ways to write lists     

--Empty List
aList :: [a]
aList = []

-- A list with the string Sauce in it 
aList2 = "sauce" : []

-- A list with the : used a prefix
aList3 :: [[Char]]
aList3 = (:)"pie" []

--The usual way to make a list
aList4 :: [String]
aList4 = ["Napkin"]

shoppingList :: [String]
shoppingList = ["Carrots"
               ,"Oats"
               ,"Butter"
               ,"Apples"
               ,"Milk"
               ,"Cereal"
               ,"Chocolate"
               ,"Bananas"
               ,"Broccoli"
               ]

main :: IO()
main = print shoppingList


aList9 :: [] String 
aList9 = ["Cat","Food","Lasagne"]

main' :: IO()
main' = print (aList9 ++ shoppingList)

lists :: [String]
lists = aList9 ++ aList4 ++ aList3













