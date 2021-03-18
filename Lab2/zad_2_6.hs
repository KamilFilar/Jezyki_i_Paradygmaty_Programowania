module Math where

f1 x = x - 2
f1' x = x + (-2)
f1'' = (+ (-2))

f2 x = mod x 5
f2' x = x `mod` 5
f2'' = (`mod` 5)

f3 x = x==10
f3' = (==10)

f4 x = x `div` 8
f4' = (`div` 8)

f5 x = x > 100
f5' = (> 100)

f6 x = rem 5 x
f6' = (`rem` 5)

f7 x = 8 `div` x
f7' = (`div` 8)

f8 x = x^3

{-
*Math> f1 5
3

*Math> f1' 5
3

*Math> f1'' 5
3

*Math> f2 6
1

*Math> f2' 6
1

*Math> f2'' 6
1

*Math> f3 10
True

*Math> f3' 11
False

*Math> f4 9
1

*Math> f4' 9
1

*Math> f5 5
False

*Math> f5' 106
True

*Math> f6 6
5

*Math> f6' 5
0

*Math> f7 8
1

*Math> f7' 9
1

*Math> f8 2
8
-}