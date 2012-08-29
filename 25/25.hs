fibs = map snd $ iterate (\(a, b) -> (b, a + b)) (0, 1)

main = print $ (1 +) $ length $ takeWhile ((< 1000) . length . show) fibs
