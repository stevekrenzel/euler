module Util.Numbers where

  import Data.List (nub)
  import Util.Lists (sortedElem)

  digits n = reverse $ digits' n
    where digits' 0 = []
          digits' n = (n `mod` 10) : (digits' (n `div` 10))

  value xs = value' xs 0
    where value' [] n = n
          value' (x:xs) n = value' xs (n * 10 + x)

  isPrime 1 = False
  isPrime x = all ((>0) . (x `mod`)) [2..(iSqrt x)]

  iSqrt = floor . sqrt . fromIntegral

  primes = filter isPrime [2..]

  factors n = concat factors'
    where factors' = [[x, n `div` x] | x <- [1..(iSqrt n)], isFactor x]
          isFactor = ((== 0) . (n `mod`))

  primeFactors = (filter isPrime) . factors

  properDivisors n = nub $ filter (/= n) $ factors n

  fibonaccis = map snd $ iterate (\(a, b) -> (b, a + b)) (0, 1)

  triangulars = map (\n -> (n * (n + 1)) `div` 2) [1..]

  isTriangular n = n `sortedElem` triangulars

  pentagonals = map (\n -> (n * ((3 * n) - 1)) `div` 2) [1..]

  isPentagonal n = n `sortedElem` pentagonals

  squares = map (^ 2) [1..]
