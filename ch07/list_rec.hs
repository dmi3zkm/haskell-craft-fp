import Prelude hiding (product, and, or)

--exercise 7.5
product :: [Integer] -> Integer
product [] = 1
product (x:xs) = x * product xs

--exercis 7.6
and, or :: [Bool] -> Bool

and [] = True
and (x:xs) = x && (and xs)

or [] = False
or (x:xs) = x || (or xs)