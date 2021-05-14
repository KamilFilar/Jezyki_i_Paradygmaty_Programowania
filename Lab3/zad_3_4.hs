module Math where

divides :: Int -> Int -> Bool
divides k n | rem n k == 0 = True
            | otherwise = False
{-
*Math> divides 2 5
False

*Math> divides 2 6
True
-}


divides' :: Int -> Int -> Bool
divides' k n = if n `rem` k == 0 then True
               else False

{-
*Math> divides 2 5
False

*Math> divides 2 6
True
-}