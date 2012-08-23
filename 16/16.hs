main = do
  print $ sum $ (map read) $ map (:[]) $ show $ 2 ^ 1000
