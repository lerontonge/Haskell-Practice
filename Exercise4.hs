
pick3Numbers :: IO String 
pick3Numbers = do
    putStrLn "Pick a number: "
    getLine 


main :: IO ()
main = do
    num1 <- pick3Numbers
    putStrLn "Another? "
    num2 <- pick3Numbers 
    putStrLn "One More? "
    num3 <- pick3Numbers
    putStrLn $ "Your chosen numbers are: " ++ num1 ++ ", " ++ num2 ++ ", and " ++ num3