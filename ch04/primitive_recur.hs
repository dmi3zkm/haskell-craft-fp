--exercise 4.19
mult :: Integer -> Integer -> Integer
mult x y 
    | x < 0 || y < 0 = error "Can't multiply unnatural numbers"
    | x == 0 || y == 0 = 0
    | otherwise = x + mult x (y-1)

--exercise 4.20
isqrt :: Integer -> Integer
isqrt 0 = 0
isqrt 1 = 1
isqrt x 
    | x < 0 = error "Can't get isqrt of a negative number"
    | otherwise = f (x - 1) x
        where f y z = if y * y <= z then y else f (y - 1) z    