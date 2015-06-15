import Data.Char

doubleAll :: [Integer] -> [Integer]
doubleAll xs = [ x*2 | x <- xs]

capitalize :: String -> String
capitalize xs = [ toUpper x | x <- xs]

capitalizeLetters :: String -> String
capitalizeLetters xs = [ toUpper x | x <- xs, isLetter x]