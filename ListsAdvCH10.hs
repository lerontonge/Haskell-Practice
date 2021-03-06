module ListsAdvCH10 where

import qualified Data.List as L

movies :: [String]
movies =
  [ "Aeon Flux"
  , "The Black Cat"
  , "Superman"
  , "Stick It"
  , "The Matrix Revolutions"
  , "The Raven"
  , "Inception"
  , "Looper"
  , "Hoodwinked"
  , "Tell-Tale"
    ]

isGood :: String -> Bool 
isGood (x:_) = x <= 'M'
isGood _ = False 

assess :: String -> String 
assess movie = movie ++ " - " ++ assessment
  where assessment  = if movieIsGood 
                     then "Good"
                     else "Bad"
        movieIsGood = isGood movie


assessMovies :: [String] -> [String]
assessMovies = map assess

assessedMovies :: [String]
assessedMovies = assessMovies movies


