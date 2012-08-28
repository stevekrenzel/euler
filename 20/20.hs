fact n = product [1..n]

main = print $ sum $ map read $ map (:[]) $ show $ fact 100
