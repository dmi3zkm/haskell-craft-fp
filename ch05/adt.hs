data Shape = Circle Float |
             Rectangle Float Float |
			 Triangle Float Float Float
             deriving (Eq, Ord, Show)
             
--exercise 5.5
perimeter :: Shape -> Float
perimeter (Circle r) = 2*pi*r
perimeter (Rectangle h w) = 2*(h+w)
perimeter (Triangle a b c) = a + b + c

--exercise 5.7
area :: Shape -> Float
area (Circle r) = pi * r * r
area (Rectangle h w) = h * w
area (Triangle a b c) = sqrt ((a + b + c)/2 * ((a + b + c)/2 - a) + ((a + b + c)/2 - b) + ((a + b + c)/2 - c))

isRound :: Shape -> Bool
isRound (Circle _) = True
isRound (Rectangle _ _) = False
isRound (Triangle _ _ _) = False

--exercise 5.8
isRegular :: Shape -> Bool
isRegular (Circle _) = True
isRegular (Rectangle h w) = h == w
isRegular (Triangle a b c) = a == b && b == c