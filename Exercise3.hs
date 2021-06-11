module Exercise3 where


main = do
    putStrLn "Where do you live? "
    location <- getLine
    putStrLn "What is your favorite food?"
    food <- getLine
    putStrLn $ "You live in " ++ location ++ " and your favorite food is " ++ food

