
printSecond :: IO ()
printSecond = do 
    putStrLn greeting

greeting :: [Char]
greeting = "Yarrrrr"

main :: IO ()
main = do
    putStrLn greeting
    printSecond