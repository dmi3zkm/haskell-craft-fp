--exercise 5.1
maxOccurs :: Integer -> Integer -> (Integer, Integer)
maxOccurs x y
    | x > y = (x, 1)
    | y > x = (y, 1)
    | otherwise = (x, 2)

maxThreeOccurs :: Integer -> Integer -> Integer -> (Integer, Integer)
maxThreeOccurs x y z
    | (fst $ maxOccurs x y) > z = maxOccurs x y
    | (fst $ maxOccurs x y) < z = (z, 1)
    | (fst $ maxOccurs x y) == z = (z, (snd $ maxOccurs x y) + 1)

--exercise 5.2
orderTriple :: (Integer, Integer, Integer) -> (Integer, Integer, Integer)
orderTriple (x, y, z) = (maxThree x y z, middleNumber x y z, minThree x y z)

middleNumber :: Integer -> Integer -> Integer -> Integer
middleNumber x y z
    | between y x z = x
    | between x y z = y
    | otherwise     = z

between :: Integer -> Integer -> Integer -> Bool
between x y z =  (x >= y) && ( y >= z )

maxThree :: Integer -> Integer -> Integer -> Integer
maxThree x y z = max (max x y) z

minThree :: Integer -> Integer -> Integer -> Integer
minThree x y z = min (min x y) z