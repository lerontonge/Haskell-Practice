journeycost :: Float -> Float -> Float 
journeycost miles fuelcostperlitre =
    let milespergallon = 35
        litrespergallon = 4.55
        gallons = miles/milespergallon
    in (gallons*litrespergallon*fuelcostperlitre)




mul :: Integer
mul = 3 * 4 

sum' :: Integer -> Integer
sum' x = mul + x


mulled :: Integer -> Integer
mulled xs = sum' mul + xs

mulled' :: Integer
mulled' = mulled mul

