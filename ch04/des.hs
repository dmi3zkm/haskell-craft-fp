--exercise 4.1
maxThree :: Integer -> Integer -> Integer -> Integer
maxThree x y z = max (max x y) z

maxFour :: Integer -> Integer -> Integer -> Integer -> Integer
maxFour w x y z =  max (max w x) (max y z)

maxFour' :: Integer -> Integer -> Integer -> Integer -> Integer
maxFour' w x y z 
    | (maxThree w x y) >= z = (maxThree w x y)
    | otherwise             = z

maxFour'' :: Integer -> Integer -> Integer -> Integer -> Integer
maxFour'' w x y z = max (maxThree w x y) z

--exercise 4.2
middleNumber :: Integer -> Integer -> Integer -> Integer
middleNumber x y z
    | between y x z = x
    | between x y z = y
    | otherwise     = z

between :: Integer -> Integer -> Integer -> Bool
between x y z =  (x <= y) && ( y <= z )

--exercise 4.3
howManyEqual :: Integer -> Integer -> Integer -> Integer
howManyEqual x y z 
    | (x == y) && (y == z) = 3
    | ((x == y) && (y /= z)) || ((x /= y) && (y == z)) || ((x /= y) && (x == z)) = 2
    | otherwise            = 0

--exercise 4.4
--TODO