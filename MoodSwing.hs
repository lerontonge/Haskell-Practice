module MoodSwing where
import Prelude (Show)
--import MoodSwing (Mood(Woot))

data Mood = Blah | Woot deriving Show

changeMood :: Mood -> Mood 
changeMood Blah = Woot 
changeMood _ = Blah  


