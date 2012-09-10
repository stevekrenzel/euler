multiplesOf ns xs = [x | x <- xs, any ((== 0) . (x `mod`)) ns]

main = print $ sum $ multiplesOf [3,5] [0..999]
