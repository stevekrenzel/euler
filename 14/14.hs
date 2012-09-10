import Data.List (maximumBy)
import Data.Ord (comparing)

collatz n
  | n == 1    = n : []
  | even n    = n : (collatz (n `div` 2))
  | otherwise = n : (collatz ((3 * n) + 1))

main = print $ maximumBy (comparing $ length . collatz) [1..999999]
