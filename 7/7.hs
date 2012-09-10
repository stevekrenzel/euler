import Util.Numbers (primes)

main = print $ last $ take 10001 primes
