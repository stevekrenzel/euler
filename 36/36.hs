bin 0 = [0]
bin n = reverse $ bin' n
  where bin' 0 = []
        bin' n = (n `mod` 2) : (bin' (n `div` 2))

digits n = reverse $ digits' n
  where digits' 0 = []
        digits' n = (n `mod` 10) : (digits' (n `div` 10))

isPalindrome xs = xs == (reverse xs)

binFilter = filter (isPalindrome . bin)

digFilter = filter (isPalindrome . digits)

main = print $ sum $  binFilter $ digFilter [0..1000000]
