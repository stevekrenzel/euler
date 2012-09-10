import Util.Numbers (digits)
import Util.Lists (isPalindrome)

palindromes xs = [(a * b) | a <- xs, b <- xs, (isPalindrome . digits) (a * b)]

main = print $ maximum $ palindromes [100..999]
