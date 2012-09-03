change = foldr ($) fn $ map gn [1, 2, 5, 10, 20, 50, 100, 200]
  where fn 0 = 1 -- Add 1 if we broke the change evenly
        fn _ = 0 -- If we didn't brake the change evenly, don't add anything
        gn size next = gn'
          where gn' n = sum $ map (next . (n -) . (* size)) [0..n `div` size]

main = print $ change 200
