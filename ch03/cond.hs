import Test.QuickCheck

--exercise 3.14
myMin :: Int -> Int -> Int
myMin x y 
    | x < y = x
    | otherwise = y

minThree :: Int -> Int -> Int -> Int
minThree x y z = myMin (min x y) z

--exercise 3.15
prop_compareMin :: Int -> Int -> Bool
prop_compareMin x y = min x y == myMin x y

prop_minThree :: Int -> Int -> Int -> Bool
prop_minThree x y z =  min (min x y) z == minThree x y z