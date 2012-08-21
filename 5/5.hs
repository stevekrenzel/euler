divisibleBy xs x = all ((== 0) . (x `mod`)) xs

main = do
  print $ head $ filter (divisibleBy [1..20]) [20, 40..]
