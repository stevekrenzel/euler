module Util.Lists where

  isPalindrome xs = xs == (reverse xs)

  sortedElem n xs = n `elem` (takeWhile (<= n) xs)

  windows size xs = takeWhile ((== size) . length) $ windows' size xs
    where windows' _    [] = []
          windows' size xs = (take size xs) : (windows' size (tail xs))

  --combinations [] = []
  --combinations (x:[]) = map (:[]) x
  --combinations (x:xs) = concatMap recurse x
  --  where combos = combinations xs
  --        recurse y = map (y:) combos
