import Data.List (find)
import Data.Maybe (fromJust)
import Util.Numbers (fibonaccis)

sizes = map (length . show) fibonaccis

main = print $ fst $ fromJust $ find ((== 1000) . snd) $ zip [1..] sizes
