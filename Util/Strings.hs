module Util.Strings where

  import Data.Char (ord)

  charValue = fromIntegral . negate . ((ord 'A') - 1 -) . ord

  wordValue = sum . (map charValue)
