import Util.Numbers (pentagonals)
import Data.Set (fromList, member)

upper = 3000 -- derived from trial & error

pairs = [abs (a - b) | a <- pentagonals', b <- pentagonals',
                       inPentagonals (a + b),
                       inPentagonals (abs (a - b))]
  where pentagonals' = take upper pentagonals
        inPentagonals n = n `member` set
        set = fromList $ pentagonals'

main = print $ head pairs
