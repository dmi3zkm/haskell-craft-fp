type Picture = [[Char]]

flipH :: Picture -> Picture
flipH = reverse

above :: Picture -> Picture -> Picture
above = (++)

flipV :: Picture -> Picture
flipV pic = [reverse line | line <- pic]

beside :: Picture -> Picture -> Picture
beside picL picR = [ lineL ++ lineR | (lineL, lineR) <- zip picL picR ]

invertChar :: Char -> Char 
invertChar ch = if ch == '.' then '#' else '.'

invertLine :: [Char] -> [Char]
invertLine line = [ invertChar ch | ch <- line ]

invertColour :: Picture -> Picture
invertColour pic = [ invertLine line | line <- pic ]

--exercise 6.4
superimposeChar :: Char -> Char -> Char
superimposeChar ch1 ch2 = if ch1 == '.' && ch2 == '.' then '.' else '#'