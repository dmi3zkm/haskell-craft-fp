import Pictures

--exercise 4.5
fourPics :: Picture -> Picture
fourPics pic = 
    left `sideBySide` right
        where
            left = (flipV pic) `above` (flipV (invertColour pic))
            right = (invertColour pic) `above` pic 

--exercise 4.6
fourPics' :: Picture -> Picture
fourPics' pic =
    top `above` bottom
        where 
            top = (flipV pic) `sideBySide` (invertColour pic)
            bottom = (invertColour (flipV pic)) `sideBySide` pic

--exercise 4.8
triArea :: Float -> Float -> Float -> Float
triArea a b c
    | possible  = sqrt(s*(s-a)*(s-b)*(s-c))
    | otherwise = 0
    where
        s        = (a+b+c)/2
        possible = (a > 0) && (b > 0) && (c > 0) && (a < b+c) && (b < a+c) && (c < a+b)