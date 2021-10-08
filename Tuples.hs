fst' :: (a, b) -> a
fst' (a, b) = a



snd' :: (a, b) -> b
snd' (a, b) = b



tupFunc :: (Int, [a]) -> (Int, [a]) -> (Int, [a])
tupFunc (a,b) (c,d) = ((a+c),(b++d))



