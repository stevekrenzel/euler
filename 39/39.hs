import Control.Monad (guard)
import Data.List (maximumBy, group, sort)
import Data.Ord (comparing)

isInt n = n == fromInteger (round n)

perimiters = do
  a <- [1..1000]
  b <- [1..1000]
  let perimiter = a + b + (sqrt $ (a ^ 2) + (b ^ 2))
  guard $ (isInt perimiter) && (perimiter <= 1000)
  return perimiter

main = print $ head $ maximumBy (comparing length) $ group $ sort perimiters
