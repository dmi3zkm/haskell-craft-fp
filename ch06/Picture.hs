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

--exercise 6.5
superimposeLine :: [Char] -> [Char] -> [Char]
superimposeLine str1 str2 = [ superimposeChar ch1 ch2 | (ch1, ch2) <- zip str1 str2 ]

--exercise 6.6
superimpose :: Picture -> Picture -> Picture
superimpose pic1 pic2 = [ superimposeLine line1 line2 | (line1, line2) <- zip pic1 pic2 ]

--exercise 6.7
joinStrings :: [String] -> String
joinStrings ss = [ c | s <- ss, c <- s ]

onSeparateLines :: [String] -> [String]
onSeparateLines ss = [s ++ "\n" | s <- ss]

printPicture :: Picture -> IO ()
printPicture pic = putStr $ joinStrings $ onSeparateLines pic