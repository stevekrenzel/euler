import Util.Numbers (primes)

main = print $ sum $ takeWhile (< 2000000) primes
