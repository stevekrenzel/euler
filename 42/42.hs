import Util.Strings (wordValue)
import Util.Files (getLines)

triangles = map (\n -> (n * (n + 1)) `div` 2) [1..]

isTriangle n = n `elem` (takeWhile (<= n) triangles)

main = do
  dictionary <- getLines "42/dictionary.txt"
  print $ length $ filter isTriangle $ map wordValue dictionary
