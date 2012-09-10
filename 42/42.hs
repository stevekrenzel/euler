import Util.Numbers (triangulars, isTriangular)
import Util.Strings (wordValue)
import Util.Files (getLines)

main = do
  dictionary <- getLines "42/dictionary.txt"
  print $ length $ filter isTriangular $ map wordValue dictionary
