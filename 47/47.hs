import Util.Lists (windows)
import Util.Numbers (primeFactors)

cond n = all ((n ==) . length . primeFactors)

main = print $ head $ head $ filter (cond 4) $ windows 4 [1..]
