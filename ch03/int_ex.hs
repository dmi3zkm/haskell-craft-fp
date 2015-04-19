threeEqual :: Integer -> Integer -> Integer -> Bool
threeEqual m n p = (m == n) && (n == p)

--exercise 3.9
threeDifferent :: Integer -> Integer -> Integer -> Bool
threeDifferent m n p = (m /= n) || (n /= p) || (m /= p)

--exercise 3.10
fourEqual :: Integer -> Integer -> Integer -> Integer -> Bool
fourEqual m n p q = (threeEqual m n p) && (p == q)