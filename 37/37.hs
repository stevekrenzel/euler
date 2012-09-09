import Data.List (inits, tails, nub)
import Util.Numbers (digits, value, isPrime)

truncations n = map value ys
  where xs = digits n
        ys = nub $ (init $ tails xs) ++ (tail $ inits xs)

main = print $ sum $ take 11 $ filter ((all isPrime) . truncations) [8..]
