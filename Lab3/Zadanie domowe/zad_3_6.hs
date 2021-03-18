module Math where

gcd' :: Integer -> Integer -> Integer
gcd' a b | b /= 0 = gcd b (a `mod` b) -- je¿eli b != 0
         | otherwise = 0

{-
*Math> gcd' 5 0
0

*Math> gcd' 12 6
6

*Math> gcd' 12 5
1
-}
