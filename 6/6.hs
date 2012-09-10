import Util.Numbers (primes, squares)

diff = ((sum [1..100]) ^ 2) - (sum $ take 100 squares)

main = print $ floor $ fromIntegral $ diff
