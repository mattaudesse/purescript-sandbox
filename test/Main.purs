module Test.Main where

import Prelude
import Control.Monad.Eff (Eff)
import Test.Assert       (ASSERT, assert)
import Main              (eulerOne, labeledEulerOne)

main :: forall e. Eff (assert :: ASSERT | e) Unit
main = do
  assert $ eulerOne        == 233168
  assert $ labeledEulerOne == "Solution to Project Euler exercise one: 233168"
