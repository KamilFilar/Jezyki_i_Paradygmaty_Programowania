-- 6.5
module Main where

import System.Environment
import Data.List
import Data.Maybe

findString word string = fromMaybe (-1) $ findIndex (isPrefixOf word) (tails string)

convert [] = []
convert (x:xs)
        | x > -1 = 1 : convert xs
        | otherwise = 0 : convert xs

main = do
  [word,source] <- getArgs
  text <- readFile source
  let linia = lines text
  let find = findIndex (>(-1)) ( map (findString word) linia )
  print find