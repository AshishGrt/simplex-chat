module Main where

import Simplex.StressTest
import System.Directory
import Test.Hspec
import Control.Monad

main :: IO ()
main = do
  dirExists <- doesDirectoryExist "test"
  when dirExists $ removeDirectoryRecursive "test"
  createDirectoryIfMissing True "test"
  hspec $ describe "SimpleX chat client" chatTests
