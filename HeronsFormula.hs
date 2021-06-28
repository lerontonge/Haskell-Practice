module HeronsFormula where


heron :: Float -> Float -> Float -> Float 
heron a b c = sqrt (s*(s-a)*(s-b)*(s-c))
    where s = (a+b+c) / 2 :: Float 