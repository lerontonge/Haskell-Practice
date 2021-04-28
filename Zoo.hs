module Zoo where
import qualified Data.List as L    


data Animal = Giraffe
            | Elephant
            | Tiger
            | Flea

type Zoo = [Animal]

localZoo :: Zoo
localZoo = [ Elephant
           , Tiger
           , Tiger
           , Giraffe
           , Elephant
           ]

adviceOnEscape :: Animal -> String
adviceOnEscape animal =
    case animal of
        Giraffe  -> "Look up"
        Elephant -> "Ear to the ground"
        Tiger    -> "Check morgues"
        Flea     -> "Don't worry"

adviceOnZooEscape :: Zoo -> [String]
adviceOnZooEscape = map adviceOnEscape

joinedWithCommasBetween :: [String] -> String 
joinedWithCommasBetween []      = ""
joinedWithCommasBetween [x]     = x
joinedWithCommasBetween (x:xs)  = x ++ ", " ++ joinedWithCommasBetween xs


main :: IO()
main = putStrLn stringToPrint
    where   
        stringToPrint = L.intercalate ", " advices
        advices = adviceOnZooEscape localZoo