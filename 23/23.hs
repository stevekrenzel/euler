import Util.Numbers (properDivisors)

upper = 28123

d = sum . properDivisors

abundants = filter (\n -> (d n) > n) [0..upper]

isSummable n = any (`elem` abundants') $ map (n -) abundants'
  where abundants' = takeWhile (< n) $ abundants

main = print $ sum $ filter (not . isSummable) [0..upper]
