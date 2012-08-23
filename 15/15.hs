import Data.Function

choose n k =  (div `on` product) [(n - k + 1)..n] [1..k]

main = do
  print $ choose 40 20
