import Data.List (permutations)
import Util.Numbers (value, primes)
import Util.Lists (windows)

hasProperty xs = all (== 0) $ zipWith mod values primes
  where values = map value $ drop 1 $ windows 3 xs

main = print $ sum $ map value $ filter hasProperty $ permutations [0..9]
