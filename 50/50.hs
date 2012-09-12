import Data.List (inits, tails, maximumBy)
import Data.Ord (comparing)
import Util.Numbers (primes, isPrime)

upper = 1000000

primes' = takeWhile (< upper) primes

candidates = [(length xs, sum xs) | xs <- allWindows primes',
                                    isPrime $ sum xs        ]

allWindows = concatMap (takeWhile ((< upper) . sum) . inits') . tails'
  where inits' = tail . inits
        tails' = init . tails

main = print $ snd $ maximumBy (comparing fst) candidates
