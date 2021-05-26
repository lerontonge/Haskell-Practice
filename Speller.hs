module Speller where
import Data.List as L ( intercalate )

speller :: [[Char]]
speller  = ["Apple", "Ball", "Cat", "Duck", "Egg"]


firstLetter :: [Char]
firstLetter = map head speller

spellertoString :: [Char] -> [String]
spellertoString = map (: [])


charToString :: [String]
charToString = spellertoString firstLetter 


listOfCharsToString :: [[Char]] -> [String]
listOfCharsToString  [[]] = [""]
listOfCharsToString  (x:xs) = x : listOfCharsToString xs


newspeller :: [String]
newspeller = listOfCharsToString speller


combineLists :: [(String, String)]
combineLists = zip charToString newspeller



printList :: Foldable t => t (String, [Char]) -> IO ()
printList xs = mapM_ (\(a,b) -> do
                          putStr a
                          putStrLn $  " is for "  ++  b
                          ) xs

main :: IO ()
main = do
    printList combineLists 
