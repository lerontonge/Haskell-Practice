areaOrPerimeter :: Double -> Double -> Double
areaOrPerimeter x y | x == y = square
                    | otherwise = perimeter 
                where square = x * y
                      perimeter = (x*2) + (y*2)

                      