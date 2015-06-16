import Data.Char

--exercise 5.18
doubleAll :: [Integer] -> [Integer]
doubleAll xs = [ x*2 | x <- xs]

--exercise 5.19
capitalize :: String -> String
capitalize xs = [ toUpper x | x <- xs]

capitalizeLetters :: String -> String
capitalizeLetters xs = [ toUpper x | x <- xs, isLetter x]

--exercise 5.20
divisors :: Integer -> [Integer]
divisors x
    | x < 1          = []
    | x == 1         = [1]
    | otherwise      = [ y |  y <- [1..x], x `mod` y == 0]

isPrime :: Integer -> Bool
isPrime x = [1,x] == divisors x

--exercise 5.21
matches :: Integer -> [Integer] -> [Integer]
matches x ys = [ y | y <- ys, y == x]

isElem :: Integer -> [Integer] -> Bool
isElem x ys = not $ null $ matches x ys

--exercise 5.23
duplicate :: String -> Integer -> String
duplicate xs n
    | n == 0    = ""
    | n == 1    = xs
    | otherwise = xs ++ duplicate xs (n-1)