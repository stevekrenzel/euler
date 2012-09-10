import Data.Function (on)

choose n k =  (div `on` product) [(n - k + 1)..n] [1..k]

main = print $ choose 40 20
