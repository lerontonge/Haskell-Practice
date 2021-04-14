module ListsCH9 where

--ways to write lists     

--Empty List
aList :: [a]
aList = []

-- A list with the string Sauce in it 
aList2 = " Sauce" : []

-- A list with the : used a prefix
aList3 :: [[Char]]
aList3 = (:)" Pie" []

--The usual way to make a list
aList4 :: [String]
aList4 = [" Napkin"]

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

main'' :: IO()
main'' = print shoppingList


main :: IO ()
main = putStrLn ("There are " ++ show(length shoppingList) ++ " items in the Shopping List. " ++ joinedWithCommas shoppingList ++ joinedWithCommas aList9 ++ joinedWithCommas aList4)

joinedWithCommas :: [String] -> String  
joinedWithCommas [] = ""
joinedWithCommas [x] = x 
joinedWithCommas (x:xs) = x ++", " ++ joinedWithCommas xs 

aList9 :: [String] 
aList9 = [" Cat","Food","Lasagne"]

main' :: IO()
main' = print (aList9 ++ shoppingList)

lists :: [String]
lists = aList9 ++ aList4 ++ aList3


firstOrEmpty :: [String] -> String 
firstOrEmpty [] = "" 
firstOrEmpty (x:_) = x










