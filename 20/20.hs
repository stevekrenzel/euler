import Util.Numbers (digits)

factorial n = product [1..n]

main = print $ sum $ digits $ factorial 100
