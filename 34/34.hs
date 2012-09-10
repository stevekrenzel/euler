import Data.List (find)
import Data.Maybe (fromJust)
import Util.Numbers (digits)

factorials = map snd $ iterate (\(n, a) -> (n + 1, a * n)) (1, 1)

cond n = (sum $ map (factorials !!) (digits n)) == n

upper = 10 ^ exponent
  where exponent = fromJust $ find boundary [1..]
        boundary n = ((factorials !! 9) * n) < ((10 ^ n) - 1)

main = print $ sum $ filter cond [3..upper]
