{-Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements 
with the same value next to each other and preserving the original order of elements.

For example:

uniqueInOrder "AAAABBBCCDAABBB" == "ABCDAB"
uniqueInOrder "ABBCcAD"         == "ABCcAD"
uniqueInOrder [1,2,2,3,3]       == [1,2,3]-}

import Data.List




removeDuplicates :: Eq a => [a] -> [a]
removeDuplicates = removeDupes []
                where removeDupes char [] = char
                      removeDupes char (x:xs)
                       | x `elem` char   = removeDupes char xs
                       | otherwise     =   removeDupes (char ++ [x]) xs


uniqueInOrder xs   =  concatMap removeDuplicates grouplst
        where grouplst = group xs