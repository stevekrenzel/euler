iSqrt = floor . sqrt . fromIntegral

isPrime x = all ((>0) . (x `mod`)) [2..(iSqrt x)]

factors n = filter isPrime $ filter isFactor qs
  where isFactor = ((== 0) . (n `mod`))
        qs = concatMap (\x -> [x, n `div` x]) [2..(iSqrt n)]

main = do
  print $ maximum $ factors 600851475143
