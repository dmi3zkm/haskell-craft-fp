import Prelude hiding (concat, elem)
import qualified Prelude

import Test.QuickCheck

--exercise 7.7
concat :: [[a]] -> [a]
concat []     = []
concat (x:xs) = x ++ concat xs

prop_concat xs = concat xs == Prelude.concat xs

elem :: (Eq a) => a -> [a] -> Bool
elem x []     = False
elem x (y:ys) = (x == y) || (elem x ys) 

prop_elem x ys = elem x ys == Prelude.elem x ys