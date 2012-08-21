palindromes xs = [(a * b) | a <- xs, b <- xs, isPalindrome (a * b)]
  where isPalindrome x = (show x) == (reverse $ show x)

main = do
  print $ maximum $ palindromes [100..999]
