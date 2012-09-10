module Util.Lists where

  isPalindrome xs = xs == (reverse xs)

  sortedElem n xs = n `elem` (takeWhile (<= n) xs)

  windows size xs = takeWhile ((== size) . length) $ windows' size xs
    where windows' _    [] = []
          windows' size xs = (take size xs) : (windows' size (tail xs))
