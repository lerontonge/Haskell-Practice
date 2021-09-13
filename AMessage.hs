module AMessage where 

wordLst :: [[Char]]
wordLst = ["enemies", "hallucinate", "Getaway", "vacation", "dumpster"]



word1 = drop 3 (head wordLst)
word2 = drop 5 (wordLst !! 1)
word3 = take 3 (wordLst !! 2)
word4 = take 3 (wordLst !! 3)
word5 = take 3 (wordLst !! 4)

main :: IO ()
main = do 
    putStrLn theMessage
        where theMessage = concat [word3, " ", word4, word2, "d", ", ", word5, word1, "!"]

