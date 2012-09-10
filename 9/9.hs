-- Infinite list of every positive integral pair (with full coverage)
pairs = pairs' 0 0
  where pairs' n 0 = (n, 0) : (pairs' 0 (n + 1))
        pairs' n m = (n, m) : (pairs' (n + 1) (m - 1))

triplets = filter (isWholeNumber . third) $ map (triple . inc) pairs
  where isWholeNumber n = n == (fromIntegral (floor n))
        triple (a, b) = (a, b, sqrt (a**2 + b**2))
        inc (a, b) = (a + 1, b + 1)
        third (a, b, c) = c

main = print $ floor $ product $ head $ filter ((== 1000) . sum) triplets
  where sum (a, b, c) = a + b + c
        product (a, b, c) = a * b * c
