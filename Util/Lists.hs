module Util.Lists where

  isPalindrome xs = xs == (reverse xs)

  windows size xs = takeWhile ((== size) . length) $ windows' size xs
    where windows' _    [] = []
          windows' size xs = (take size xs) : (windows' size (tail xs))
