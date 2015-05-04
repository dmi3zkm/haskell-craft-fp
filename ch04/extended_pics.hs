--exercise 4.25
import Pictures

black :: Picture
black = invertColour white

blackSquares :: Integer -> Picture
blackSquares n
	| n <= 1 = black
	| otherwise = black `sideBySide` blackSquares (n - 1)

whiteSquares :: Integer -> Picture
whiteSquares n
	| n <= 1 = white
	| otherwise = white `sideBySide` whiteSquares (n - 1)

blackWhite :: Integer -> Picture
blackWhite n
	| n <= 1 = black
	| otherwise = black `sideBySide` whiteBlack (n - 1)

whiteBlack :: Integer -> Picture
whiteBlack n
	| n <= 1 = white
	| otherwise = white `sideBySide` blackWhite (n - 1)

blackChess :: Integer -> Integer -> Picture
blackChess n m
	| n <= 1 = blackWhite m
	| otherwise = blackWhite m `above` whiteChess (n - 1) m

whiteChess :: Integer -> Integer -> Picture
whiteChess n m
	| n <= 1 = whiteBlack m
	| otherwise = whiteBlack m `above` blackChess (n - 1) m

--exercise 4.26
column :: Picture -> Integer -> Picture
column pic n
	| n <= 1 = pic
	| otherwise = pic `above` column pic (n-1) 

--exercise 4.27
--TODO

--exercise 4.28
--TODO