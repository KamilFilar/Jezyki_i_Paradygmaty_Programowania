module Math where

factorial2 x | x == 0 = 1
             | x == 1 = 1
             | otherwise = x * factorial2 (x-2)

{-
*Math> factorial2 0
1

*Math> factorial2 1
1

*Math> factorial2 8
384

*Math> factorial2 9
945
-}