import Data.List (permutations, nub, sort)
import Util.Numbers (isPrime, value, digits)

cond x = allPrime && arePerms
  where allPrime = all isPrime [x, y, z]
        arePerms = (== 1) $ length $ nub $ map (sort . digits) [x, y, z]
        y = x + 3330
        z = y + 3330

ans = last $ filter cond [1000..9999]

main = print $ value $ concatMap digits [ans, ans + 3330, ans + 6660]
