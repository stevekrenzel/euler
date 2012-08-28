fact n = product [1..n]
digits n = map read $ map (:[]) $ show n

main = print $ sum $ digits $ fact 100
