--exercise 7.1
firstPlusOne :: [Integer] -> Integer
firstPlusOne [] = 0
firstPlusOne (x:xs) = x + 1

--exercise 7.2
sumFirstAndSecond :: [Integer] -> Integer
sumFirstAndSecond [] = 0
sumFirstAndSecond (x:[]) = x
sumFirstAndSecond (x1:(x2:xs)) = x1 + x2