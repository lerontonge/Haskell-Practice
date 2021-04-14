module ListsCH9 where

--ways to write lists     

--Empty List
aList :: [a]
aList = []

-- A list with the string Sauce in it 
aList2 = "sauce" : []

-- A list with the : used a prefix
alist3 = (:) "pie" []

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











