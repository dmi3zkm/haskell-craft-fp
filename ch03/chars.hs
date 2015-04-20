offset :: Int
offset = fromEnum 'a' - fromEnum 'A'

--exercise 3.16
toUpper :: Char -> Char
toUpper ch = if (fromEnum ch >= fromEnum 'a') && (fromEnum ch <= fromEnum 'z') then toEnum ((fromEnum ch) - offset)::Char else ch

--exercise 3.17
charToNum :: Char -> Int
charToNum ch = if (fromEnum ch >= fromEnum '0') && (fromEnum ch <= fromEnum '9') then (fromEnum ch) - (fromEnum '0') else 0