--exercise 7.1
firstPlusOne :: [Integer] -> Integer
firstPlusOne [] = 0
firstPlusOne (x:xs) = x + 1

--exercise 7.2
sumFirstAndSecond :: [Integer] -> Integer
sumFirstAndSecond [] = 0
sumFirstAndSecond (x:[]) = x
sumFirstAndSecond (x1:(x2:xs)) = x1 + x2

--exercise 7.3
firstPlusOne' :: [Integer] -> Integer
firstPlusOne' xs = if null xs then 0 else head xs + 1

sumFirstAndSecond' :: [Integer] -> Integer
sumFirstAndSecond' xs = if null xs then 0 else (if null (tail xs) then head xs else head xs + head (tail xs))