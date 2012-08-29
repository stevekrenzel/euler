import Data.List
import Data.Maybe

fibs = map snd $ iterate (\(a, b) -> (b, a + b)) (0, 1)

sizes = map (length . show) fibs

main = print $ fst $ fromJust $ find ((== 1000) . snd) $ zip [1..] sizes
