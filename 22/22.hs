import Data.List (sort)
import Util.Strings (wordValue)
import Util.Files (getLines)

worths xs = zipWith (\i w -> i * (wordValue w)) [1..] (sort xs)

main = do
  names <- getLines "22/names.txt"
  print $ sum $ worths names
