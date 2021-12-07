import Distribution.Simple.Utils (xargs)



greetIfCool :: String -> IO()
greetIfCool coolness = 
    case cool of 
        True ->
            putStrLn "eyyyy. WHat's shakin'?"
        False ->
            putStrLn "pshhhhh"
    where cool = coolness == "downright frosty yo"


functionC x y = if (x > y) then x else y

functionC' x y = 
    case xIsBigger of
        True -> x
        False -> y
    where xIsBigger = x > y 


ifEvenAdd2 n = if even n then (n+2) else n
ifEvenAdd2' x =
    case isEven of 
        True -> x + 2
        False -> x
    where isEven = even x

nums x =
    case compare x 0 of
        LT -> -1
        GT -> 1
        _ -> 0 

        
