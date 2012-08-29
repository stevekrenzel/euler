import Data.List

main = print $ concatMap show $ (sort $ permutations [0..9]) !! 1000000
