--remove first and last character of a string

removeChar :: String -> String
removeChar str =  init (tail str)