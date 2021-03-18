module Math where

seq' n | n == 1 = 3
       | n == 2 = 4
       | n > 2 = 0.5 * seq' (n-1) + 2 * seq' (n-2)

{-
*Math> seq' 1
3.0

*Math> seq' 2
4.0

*Math> seq' 5
22.0
-}