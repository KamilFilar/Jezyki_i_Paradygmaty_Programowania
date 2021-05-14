-- 6.1.1
module Main where
silnia :: Int -> Int
silnia n | n == 0 = 1
         | n > 0  = n*silnia (n - 1)

main =
     do putStrLn "Enter natural number: "
        k <- readLn                             -- 1
        let result = silnia k                   -- 2
        print result

{-
*Main> :t putStrLn
putStrLn :: String -> IO ()
*Main> :t readLn
readLn :: Read a => IO a
*Main> :t print
print :: Show a => a -> IO ()
*Main> :t read
read :: Read a => String -> a
*Main> :t show
show :: Show a => a -> String
-}