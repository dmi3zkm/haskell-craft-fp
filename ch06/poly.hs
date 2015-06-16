import Prelude hiding (snd)

--exercise 6.1
snd :: (a, b) -> b
snd (x,y) = y

sign :: a -> [a]
sign x = [x]