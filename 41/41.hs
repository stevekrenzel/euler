import Data.List
import Util.Numbers (isPrime, value)

pandigitals = map value $ concatMap permutations $ inits [1..9]

main = print $ maximum $ filter isPrime pandigitals
