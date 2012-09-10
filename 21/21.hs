import Util.Numbers (properDivisors)

d = sum . properDivisors

isAmicable n = (n /= a) && (n == b)
  where a = d n
        b = d a

main = print $ sum $ filter isAmicable [0..9999]
