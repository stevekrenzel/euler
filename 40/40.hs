n = concatMap show [0..]

main = do
  print $ product $ map (read . (:[]) . (n !!)) $ map (10^) [0..6]
