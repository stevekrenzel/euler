fn n = (n * (n * (4 * n + 3) + 8) - 6) `div` 6
-- This is the closed form derived from:
--    (sum $ map (\n -> (2*(n^2)) - n + 1) [1..m]) + (m `div` 2) - 1
-- Which was derived from:
--    (sum $ map (\n -> (n^2) - n + 1) [1..1001]) +
--    ((sum $ map (^2) [1..1001]) + (1001 `div` 2)) - 1
-- Which was dervied from my whiteboard.

main = print $ fn 1001
