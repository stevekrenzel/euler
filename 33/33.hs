import Control.Applicative

fractions = fractions' triples
  where triples = (,,) <$> [1..9] <*> [1..9] <*> [0..9]
        fractions' [] = []
        fractions' ((i, j, k) : xs) =
          if (k > 0) && (i < k) && (i / k) == (n / m) then
            (n, m) : (fractions' xs)
          else
            fractions' xs
          where n = (i * 10) + j
                m = (j * 10) + k

numerator = floor $ product $ map fst fractions

denominator = floor $ product $ map snd fractions

main = print $ denominator `div` (gcd numerator denominator)
