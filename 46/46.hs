import Util.Numbers (primes, squares, isPrime)

notGoldbach n = not $ any (n ==) [p + (2 * s) | p <- primes', s <- squares']
  where primes' = takeWhile (<= n) primes
        squares' = takeWhile (<= n) squares

notPrime = not . isPrime

main = print $ head $ filter notGoldbach $ filter notPrime [3,5..]
