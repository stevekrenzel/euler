import Data.List (find)
import Data.Maybe (fromMaybe)

word 0  = "zero"
word 1  = "one"
word 2  = "two"
word 3  = "three"
word 4  = "four"
word 5  = "five"
word 6  = "six"
word 7  = "seven"
word 8  = "eight"
word 9  = "nine"
word 10 = "ten"
word 11 = "eleven"
word 12 = "twelve"
word 13 = "thirteen"
word 14 = "fourteen"
word 15 = "fifteen"
word 16 = "sixteen"
word 17 = "seventeen"
word 18 = "eighteen"
word 19 = "nineteen"
word 20 = "twenty"
word 30 = "thirty"
word 40 = "forty"
word 50 = "fifty"
word 60 = "sixty"
word 70 = "seventy"
word 80 = "eighty"
word 90 = "ninety"
word n
  | n < 100                     = (word tens) ++ (word ones)
  | base == 100 && modBase /= 0 = prefix ++ scale ++ "and" ++ suffix
  | otherwise                   = prefix ++ scale ++ suffix
  where ones    = n `mod` 10
        tens    = n `mod` 100 - ones
        prefix  = word $ n `mod` (base * 10) `div` base
        suffix  = if modBase == 0 then "" else (word modBase)
        modBase = n `mod` base
        (base, scale) = fromMaybe (0, "") $ find ((n >=) . fst) [
          (1000, "thousand"),
          (100, "hundred")]

main = print $ length $ concatMap word [1..1000]
