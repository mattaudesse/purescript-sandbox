module Main where

import Prelude
import Control.Monad.Eff         (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Data.List                 (range, filter)
import Data.Foldable             (sum)


-- Find the sum of all the multiples of 3 or 5 below 1000
-- https://github.com/purescript/documentation/blob/master/guides/Getting-Started.md
eulerOne :: Int
eulerOne =
    let ns        = range 0 999
        multiples = filter (\n -> mod n 3 == 0 || mod n 5 == 0) ns
    in sum multiples


labeledEulerOne :: String
labeledEulerOne = "Solution to Project Euler exercise one: " <> show eulerOne


main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  log $ labeledEulerOne
