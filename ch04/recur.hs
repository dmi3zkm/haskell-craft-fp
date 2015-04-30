--exercise 4.17
rangeProduct :: Integer -> Integer -> Integer
rangeProduct m n
            | n < m = 0
            | m < 0 && n > 0 = 0 
            | n == m = m
            | otherwise = n * (rangeProduct m (n - 1))

--exercise 4.18
factorial :: Integer -> Integer
factorial 0 = 1
factorial n 
        | n < 0 = error "Can't get factorial of negative"
        | otherwise = rangeProduct 1 n