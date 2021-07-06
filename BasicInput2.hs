main ::  IO()
main = do
    putStrLn "What is your name?"
    name <- getLine
    putStrLn "What is your pet's name?"
    petName <- getLine 
    putStrLn ("Hello " ++ name ++ " Your pet's name is " ++ petName)



--Test Commit