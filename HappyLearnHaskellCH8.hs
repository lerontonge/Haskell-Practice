module HappyLearnHaskellCH8 where


name :: String 
name = "Alex"

message :: String -> String
message name 
            | name == "Dave" = "I cant do that "
            | name == "Sam" = "Play it Again "
            | name == "Alex" = "I am a clown "
            | otherwise = "Hello"


message' :: String -> String 
message' name = 
                if name == "Dave"
                    then "I can't do that "
                    else if name == "Sam"
                        then "Play it again "
                        else if name == "Alex"
                            then "I am a Clown "
                            else "Hello "


message'' :: String -> String 
message'' name = 
    case name of 
        "Dave"  -> "I cant do that "
        "Sam"   -> "Play it again "
        "Alex"  -> "I am a clown "
        "Creep" -> "Feeling Lucky? "
        _       -> "Hello "




main :: IO()
main = putStrLn (message name ++ message' "Sam" ++ message'' name )



