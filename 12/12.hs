import Data.List (iterate, find)
import Data.Maybe (fromJust)
import Util.Numbers (factors)

triangles = map snd $ iterate (\(a, b) -> (a + 1, b + a + 1)) (1, 1)

main = print $ fromJust $ find ((> 500) . length . factors) triangles
