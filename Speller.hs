module Speller where
import Data.List as L ( intercalate )

wordList :: [[Char]]
wordList  = ["Apple", "Ball", "Cat", "Duck", "Egg"]

firstLetter :: [Char]
firstLetter = map head wordList


wordListtoString :: [Char] -> [String]
wordListtoString = map (: [])


charToString :: [String]
charToString = wordListtoString firstLetter 

listOfCharsToString :: [[Char]] -> [String]
listOfCharsToString  [[]] = [""]
listOfCharsToString  (x:xs) = x : listOfCharsToString xs


newWordList :: [String]
newWordList = listOfCharsToString wordList


combineLists :: [(String, String)]
combineLists = zip charToString newWordList

printList xs = mapM_ (\(a,b) -> do
                          putStr a
                          putStrLn ( " is for "  ++  b)
                          ) xs

main :: IO ()
main = do
    printList combineLists 
