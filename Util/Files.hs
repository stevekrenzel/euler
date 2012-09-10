module Util.Files where

  import Control.Monad (liftM)

  getLines = liftM lines . readFile
