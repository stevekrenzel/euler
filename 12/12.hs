import Data.List

triangles = map snd $ iterate (\(a, b) -> (a + 1, b + a + 1)) (1, 1)

factors n = concat factors'
  where factors' = [[x, n `div` x] | x <- [1..(iSqrt n)], (n `mod` x == 0)]
        iSqrt = floor . sqrt . fromIntegral

main = do
  maybe (return ()) print (find ((> 500) . length . factors) triangles)
