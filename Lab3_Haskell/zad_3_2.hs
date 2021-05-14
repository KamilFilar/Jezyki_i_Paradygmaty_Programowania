module Math where

factorial x | x == 0 = 1
            | otherwise = x * factorial(x-1)

{-
*Math> factorial 0
1

*Math> factorial 2
2

*Math> factorial 3
6

*Math> factorial 4
24

*Math> factorial 5
120
-}


-- Funckja musi przyjmowac wartosci 0 <= k <= n
binomialCoefficient k n = factorial n `div` ( factorial k * factorial (n-k) )

{-
*Math> binomialCoefficient 3 5
10

*Math> binomialCoefficient 3 6
20

*Math> binomialCoefficient 3 7
35
-}