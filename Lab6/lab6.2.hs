-- 6.2
module Main where
 
import System.Environment
 
main = do
  [source,destination] <- getArgs
  text <- readFile source
  writeFile destination text
  
{-
*Main> :t readFile
readFile :: FilePath -> IO String
*Main> :t writeFile
writeFile :: FilePath -> String -> IO ()
*Main> :m +System.Environment
*Main System.Environment> :t getArgs
getArgs :: IO [String]
-}
{-
How many arguments does the function readFile take?
1

How many arguments does the function writeFile take?
2

How many arguments does the function getArgs take?
0

What is the type of the result of function readFile?
Monada IO String

What is the type of the result of function writeFile?
Monada IO void

What is the type of the result of function getArgs?
String list
-}
