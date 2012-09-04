isPrime x = all ((>0) . (x `mod`)) [2..(iSqrt x)]
  where iSqrt = floor . sqrt . fromIntegral

digits n = reverse $ digits' n
  where digits' 0 = []
        digits' n = (n `mod` 10) : (digits' (n `div` 10))

value xs = value' xs 0
  where value' [] n = n
        value' (x:xs) n = value' xs (n * 10 + x)

rotations xs = take (length xs) $ iterate rotate xs
  where rotate (x:xs) = xs ++ [x]

isCircular = (all isPrime) . (map value) . rotations . digits

main = print $ length $ filter isCircular [2..1000000]
