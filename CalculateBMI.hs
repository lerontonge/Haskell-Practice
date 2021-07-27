--Fatass
bmi :: Float -> Float -> String  
bmi weight height | bmi' <= 18.5 = "Underweight"
                  | bmi' <= 25.0 && bmi' > 18.5 = "Normal"
                  | bmi' <= 30.0 && bmi' > 25.0 = "Overweight"
                  | otherwise = "Obese"
                   where bmi' = weight / (height * height)