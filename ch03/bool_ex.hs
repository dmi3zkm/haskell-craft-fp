import Test.QuickCheck

--exercise 3.1
exclusiveOr :: Bool -> Bool -> Bool
exclusiveOr x y = if (x == True && y == False) || (x == False && y == True) then True else False

--exercise 3.3
exclusiveOr' :: Bool -> Bool -> Bool
exclusiveOr' True True = False
exclusiveOr' True False = True
exclusiveOr' False True = True
exclusiveOr' False False = False

--exercise 3.4
logicalAnd :: Bool -> Bool -> Bool
logicalAnd True True = True
logicalAnd True False = False
logicalAnd False True = False
logicalAnd False False = False

logicalOr :: Bool -> Bool -> Bool
logicalOr True True = True
logicalOr True False = True
logicalOr False True = True
logicalOr False False = False

--exercise 3.5
nAnd :: Bool -> Bool -> Bool
nAnd True True = False
nAnd x y = True

nAnd' :: Bool -> Bool -> Bool
nAnd' x y 
    | x == True && y == True = False
    | otherwise              = True

--exercise 3.6
prop_exclusiveOr :: Bool -> Bool -> Bool
prop_exclusiveOr x y  = 
    exclusiveOr x y == if (x == True && y == False) || (x == False && y == True) then True else False

prop_exclusiveOr' :: Bool -> Bool -> Bool
prop_exclusiveOr' x y = exclusiveOr' x y == exclusiveOr x y