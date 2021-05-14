-- 6.1.3
module Main where
silnia :: Int -> Int
silnia n | n == 0 = 1
         | n > 0  = n*silnia (n - 1)

main =
     do putStrLn "Enter natural number: "
        k <- getLine
        let result = silnia (read k)
        putStrLn (k ++ "! = " ++ show result)