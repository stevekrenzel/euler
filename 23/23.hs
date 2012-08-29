import Data.List (nub)

upper = 28123

d n = sum $ nub $ filter (/= n) $ concat factors'
  where factors' = [[x, n `div` x] | x <- [1..(iSqrt n)], (n `mod` x == 0)]
        iSqrt = floor . sqrt . fromIntegral

abundants = filter (\n -> (d n) > n) [0..upper]

isSummable n = any (`elem` abundants') $ map (n -) abundants'
  where abundants' = takeWhile (< n) $ abundants

main = print $ sum $ filter (not . isSummable) [0..upper]
