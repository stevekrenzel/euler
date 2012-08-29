import Data.List (nub)

d n = sum $ nub $ filter (/= n) $ concat factors'
  where factors' = [[x, n `div` x] | x <- [1..(iSqrt n)], (n `mod` x == 0)]
        iSqrt = floor . sqrt . fromIntegral

isAmicable n = (n /= a) && (n == b)
  where a = d n
        b = d a

main = print $ sum $ filter isAmicable [0..9999]
