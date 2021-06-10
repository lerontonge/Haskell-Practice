module WhatTimeIsIt where

whatTimeIsIt :: IO String 
whatTimeIsIt = do
    putStrLn "What time is it now?"
    getLine

main :: IO()
main = do
    timeString <- whatTimeIsIt
    putStrLn "Again!"
    timeString2 <- whatTimeIsIt
    putStrLn ("Ok, you said it was "
              ++ timeString
              ++ " and then you said it was"
              ++ timeString2)
