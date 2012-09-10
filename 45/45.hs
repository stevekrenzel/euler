import Util.Lists (sortedElem)
import Util.Numbers (triangulars, pentagonals, isTriangular, isPentagonal)

hexagonals = map (\n -> n * ((2 * n) - 1)) [1..]

tripenthexangulars = filter isTriangular $ filter isPentagonal $ hexagonals

main = print $ last $ take 3 tripenthexangulars
