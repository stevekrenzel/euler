import Data.List
import Data.Maybe
import Data.Ord

partitions n = partitions' n 0
  where partitions' 0 o = [(0, o)]
        partitions' n o = (n, o) : (partitions' (n - 1) (o + 1))

numerators = map numerator $ concatMap partitions [0..]
  where numerator (a, b) = (a, (max ((10^a) - 1) 1) * (10^b))

cycleLength n = fst $ fromJust $ find ((== 0) . (`mod` n) . snd) numerators

main = print $ maximumBy (comparing cycleLength) [1..1000]
