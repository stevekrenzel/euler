import Data.List
import Data.Ord
import Util.Numbers (isPrime)

first  (a,_,_) = a
second (_,a,_) = a
third  (_,_,a) = a

bounds = [-1000..1000]

fn a b n = (n ^ 2) + (a * n) + b

results = [(a, b, primeLength $ map (fn a b) [0..]) | a <- bounds, b <- bounds]
  where primeLength = length . (takeWhile isPrime)

coeffs = maximumBy (comparing third) results

main = print $ ((first coeffs) * (second coeffs))
