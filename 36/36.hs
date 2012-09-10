import Util.Numbers (digits)
import Util.Lists (isPalindrome)

bin 0 = [0]
bin n = reverse $ bin' n
  where bin' 0 = []
        bin' n = (n `mod` 2) : (bin' (n `div` 2))

binFilter = filter (isPalindrome . bin)

digFilter = filter (isPalindrome . digits)

main = print $ sum $  binFilter $ digFilter [0..1000000]
