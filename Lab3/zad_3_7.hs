module Math where
{-
*Math> 3 * 5    -- operator
15

*Math> (*) 3 5  -- function
15

*Math> :t gcd
gcd :: Integral a => a -> a -> a

*Math> gcd 12 6
6

*Math> gcd 15 8
1
-}


(><) :: Integral a => a -> a -> Bool
x >< y | gcd x y == 1 = True
       | otherwise = False

{-
*Math> 12 >< 6
False

*Math> 15 >< 8
True
-}