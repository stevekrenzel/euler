import Util.Numbers (digits, value, isPrime)

rotations xs = take (length xs) $ iterate rotate xs
  where rotate (x:xs) = xs ++ [x]

isCircular = (all isPrime) . (map value) . rotations . digits

main = print $ length $ filter isCircular [2..1000000]
