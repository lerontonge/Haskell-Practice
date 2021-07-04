

-- Needs refinement 


complimentary :: Char -> Char
complimentary c = case c of 
    'A' -> 'T'
    'T' -> 'A'
    'G' -> 'C'
    'C' -> 'G' 


dnaStrand :: [Char] -> [Char]
dnaStrand = map complimentary

