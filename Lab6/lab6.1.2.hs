-- 6.1.2
module Main where
silnia :: Int -> Int
silnia n | n == 0 = 1
         | n > 0  = n*silnia (n - 1)

main =
     do putStrLn "Enter natural number: "
        k <- readLn      -- 1
        print (silnia k) -- 2