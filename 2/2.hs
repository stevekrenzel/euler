fibs = map snd $ iterate (\(a, b) -> (b, a + b)) (0, 1)

main = do
  print $ sum $ filter even $ takeWhile (< 4000000) fibs
