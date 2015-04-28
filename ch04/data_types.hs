--exercise 4.11 and 4.12 

data Move = Rock | Paper | Scissors
            deriving (Show, Eq)

data Result = Win | Lose | Draw
              deriving (Show, Eq)  

beat :: Move -> Move
beat Rock = Paper
beat Paper = Scissors
beat Scissors = Rock

lose :: Move -> Move
lose Rock = Scissors
lose Paper = Rock
lose Scissors = Paper

outcome :: Move -> Move -> Result
outcome x y
    | beat y == x = Win
    | lose y == x = Lose
    | otherwise = Draw