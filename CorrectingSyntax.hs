module CorrectingSyntax where
 --Chapter 4

x = (+)

f xs = w `x` 1
    where w = length xs

id :: p -> p
id x = x

--3. 

f' :: (a, b) -> a
f' (a,b) = a
