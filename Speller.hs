module Speller where
import Data.List ( intercalate ) 

wordList :: [[Char]]
wordList  = ["Apple", "Ball", "Cat", "Duck"]

getFirstLetter :: [[Char]] -> [Char]
getFirstLetter [[]] = []
getFirstLetter [] = ""
getFirstLetter (x:xs) = word x : getFirstLetter xs
                       where word = head 

wordLst :: [[Char]] -> [Char]
wordLst [c] = c 

firstLetter :: [Char]
firstLetter = map head wordList 


exPeriment :: [Char]
exPeriment  =  getFirstLetter wordList 


printLetters :: [Char] -> [Char]
printLetters (x:xs) = x : printLetters xs

                        
speller :: [Char] -> [Char]
speller (x:xs) = x : speller xs 

--newWordList :: [Char]
-]=newWordList = intercalate " is for " wordList

