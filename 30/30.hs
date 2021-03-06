import Data.List
import Data.Maybe
import Util.Numbers (digits)

powers m n = map (^m) $ digits n

upper m = 10 ^ (fromJust $ find (\n -> n*(9^m) < (10^n - 1)) [0..])

isFn m n = (sum $ powers m n) == n

total n = sum $ filter (isFn n) [2..(upper n)]

main = print $ total 5
