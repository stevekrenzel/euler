import Data.List (permutations, inits, nub)

triples = map (map value) $ concatMap (partitions 3) $ permutations [1..9]

condition (x:y:z:[]) = x * y == z

partitions _ [] = []
partitions 0 _  = []
partitions 1 xs = [[xs]]
partitions n xs = concatMap recurse splits
  where recurse (x, y) = map (x:) (partitions (n - 1) y)
        splits = map (flip splitAt xs) [1.. (length xs) - 1]

value xs = value' xs 0
  where value' [] n = n
        value' (x:xs) n = value' xs (n * 10 + x)

main = print $ sum $ nub $ map last $ filter condition triples
