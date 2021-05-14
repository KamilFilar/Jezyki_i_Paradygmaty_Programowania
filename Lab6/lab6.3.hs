-- 6.3

import System.Environment

clear :: String -> Bool -> String
clear [] _ = []
clear (x:xs) False | x == '<' = clear xs True
                   | otherwise = x : clear xs False
clear (x:xs) True | x == '>' = clear xs False
                  | otherwise = clear xs True


main = do
  [source,destination] <- getArgs
  text <- readFile source
  writeFile destination (clear text False)

{-
The suggested names of variables in function main are: input, output, html, text

Download the following html file and test with it html2txt application.

http://www.balois.pl/jipp/index.htm
-}

{-
Consider two branches of the clear function with flags:

False - to be invoked if the current character is outside an html tag
True  - to be invoked if the current character is inside an html tag
-}

{-
clear :: String -> Bool -> String
clear ...
clear ... False | if we get '<' then we omit it and change the mode of operation
                | otherwise, we add the current char to the result and continue
clear ... True | if we get '>' then we omit it and change the mode of operation
               | otherwise, we omit the current char and continue
-}