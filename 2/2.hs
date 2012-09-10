import Util.Numbers (fibonaccis)

main = print $ sum $ filter even $ takeWhile (< 4000000) fibonaccis
