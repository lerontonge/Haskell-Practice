

lastname = do
    putStrLn "What's your Last Name?"
    ln <- getLine 
    putStrLn ("Your last name is: " ++ ln)

main = do 
    lastname

