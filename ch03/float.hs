import Test.QuickCheck

--exercise 3.20
averageThree :: Integer -> Integer -> Integer -> Float
averageThree x y z = fromIntegral (x + y + z)/3

--TODO howManyAboveAvegare

--exercise 3.21
prop_averageThree :: Integer -> Integer -> Integer -> Bool
prop_averageThree x y z = averageThree x y z == fromIntegral (x+y+z)/3

--TODO prop_howManyAboveAverage