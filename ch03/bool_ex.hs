--exercise 3.1
exclusiveOr :: Bool -> Bool -> Bool
exclusiveOr x y = if (x == True && y == False) || (x == False && y == True) then True else False

--exercise 3.3
exclusiveOr' :: Bool -> Bool -> Bool
exclusiveOr' True True = False
exclusiveOr' True False = True
exclusiveOr' False True = True
exclusiveOr' False False = False