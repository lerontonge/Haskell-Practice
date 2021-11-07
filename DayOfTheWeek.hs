

data DayOfWeek = Mon | Tue | Weds | Thu | Fri | Sat | Sun
    deriving Show 

data Date = Date DayOfWeek Int
    deriving Show

instance Eq DayOfWeek where
    (==) Mon Mon    = True 
    (==) Tue Tue    = True 
    (==) Weds Weds  = True 
    (==) Thu Thu    = True 
    (==) Fri Fri    = True 
    (==) Sat Sat    = True 
    (==) Sun Sun    = True
    (==) _ _        = False 

instance Eq Date where
    (==) (Date weekday dayOfMonth)
         (Date weekday' dayOfMonth') =
             weekday == weekday' && dayOfMonth == dayOfMonth'


data Identity a = Identity a
instance Eq a => Eq (Identity a) where 
    (==)(Identity v) (Identity v') = v == v'


data TisAnInteger = TisAn Integer 
instance Eq TisAnInteger where
    TisAn x == TisAn x'  = True 



data TwoIntegers = Two Integer Integer 
instance Eq TwoIntegers where
    Two x y == Two w z = True 


data StringOrInt = TisAnInt Int | TisAString String 
instance Eq StringOrInt where
    (==) (TisAnInt x) (TisAnInt y) = x == y 
    (==) (TisAString x) (TisAString y) = True
    (==) _ _ = False 

data Pair a = Pair a a 
instance Eq a => Eq (Pair a) where
    (==) (Pair a b)  (Pair a' b') = True  


data Tuple a b = Tuple a b 
instance (Eq a, Eq b) => Eq (Tuple a b) where
    (==) (Tuple c d) (Tuple a b) = True -- OR (c == a && d == b) 


data Which a = ThisOne a | ThatOne a
instance Eq a => Eq (Which a) where 
    (==) (ThisOne a) (ThisOne a') = True
    (==) (ThatOne a) (ThatOne a') = True
    (==) _ _ = False 

data EitherOr a b = Hello a | Goodbye b 
instance (Eq a, Eq b) => Eq (EitherOr a b) where 
    (==) (Hello a) (Hello a') = True
    (==) (Goodbye b) (Goodbye b') = True 
    (==) _ _ = False
