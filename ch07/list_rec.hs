import Prelude hiding (product)

--exercise 7.5
product :: [Integer] -> Integer
product [] = 1
product (x:xs) = x * product xs