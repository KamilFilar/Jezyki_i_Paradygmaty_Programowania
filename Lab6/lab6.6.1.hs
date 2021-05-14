import System.Environment

pesel = ["53082806059", "89100192752", "85111779283"]

womenCount :: [[Char]] -> Int
womenCount [] = 0
womenCount ([_,_,_,_,_,_,_,_,_,p,_]:xs)
     | elem p ['0', '2', '4', '6', '8'] = 1 + womenCount xs
     | otherwise = womenCount xs
 

main = do
  [source] <- getArgs
  text <- readFile source
  let pesels = lines text
  let women = womenCount pesels
  putStrLn ("womenCount = " ++ show women)