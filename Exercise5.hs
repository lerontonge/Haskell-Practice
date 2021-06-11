

main :: IO()
main = do 
    putStrLn "Where do ytou live? "
    place <- getLine
    putStrLn $ "You live in " ++ place
