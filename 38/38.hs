import Data.List (sort, maximumBy, inits)
import Data.Ord (comparing)
import Util.Numbers (digits, value)

upper = 99999 -- The largest factor can only be 5 digits since the total length
              -- must be 9 digits and n must be >= 2.

isPandigital xs = (sort xs) == [1..9]

pandigitals = concatMap fn [1..99999]
  where fn n = map value $ filter isPandigital $ shortEnough $ candidates
          where digits' = concatMap digits
                shortEnough = takeWhile ((< 10) . length)
                candidates = map digits' $ inits $ map (n *) [1,2..]

main = print $ maximum pandigitals
