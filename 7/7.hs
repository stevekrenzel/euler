primes = filter isPrime [2..]
  where isPrime x = all ((>0) . (x `mod`)) [2..(iSqrt x)]
        iSqrt = floor . sqrt . fromIntegral

main = do
  print $ last $ take 10001 primes
