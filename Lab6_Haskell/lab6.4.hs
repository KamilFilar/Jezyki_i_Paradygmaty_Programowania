-- 6.4
module Main where
 
import System.Environment

merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) | x <= y = x : merge xs (y:ys)
                    | otherwise = y : merge (x:xs) ys

mergeSort :: Ord a => [a] -> [a]
mergeSort xs | len <= 1 = xs
             | otherwise = merge (mergeSort ys) (mergeSort zs)
             where len = length xs
                   half = len `div` 2
                   ys = take half xs
                   zs = drop half xs

main = do
  [source,destination] <- getArgs
  text <- readFile source
  let linia = lines text
  let sort = mergeSort linia
  let totext = unlines sort
  writeFile destination totext