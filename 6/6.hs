squares = map (**2) [1..]

main = do
  print $ floor $ ((sum [1..100]) ** 2) - (sum $ take 100 squares)
