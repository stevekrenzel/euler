n = sum $ zipWith (^) [1..1000] [1..1000]

main = print $ n `mod` (10 ^ 10)
