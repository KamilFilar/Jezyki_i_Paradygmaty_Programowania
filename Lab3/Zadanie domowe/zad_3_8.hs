module Complex where

{-
z1 = a + b*i   i*i = -1
z2 = c + d*i

z1 + z2 = a + b*i + c + d*i = a + c + (b + d)*i
-}


infixl 6 +.
(+.) :: (Double, Double) -> (Double, Double) -> (Double, Double)
(a,b) +. (c,d) = ( a+c , b+d )

{-
*Complex> (3.14,-1)+.(-1,5)
(2.14,4.0)
-}


infixl 6 -.
(-.) :: (Double, Double) -> (Double, Double) -> (Double, Double)
(a,b) -. (c,d) = ( a-c , b-d )
{-
*Complex> (3.14,-1)-.(-1,5)
(4.140000000000001,-6.0)
-}


infixl 7 *.
(*.) :: (Double, Double) -> (Double, Double) -> (Double, Double)
(a,b) *. (c,d) = (a*c - b*d, a*d + b*c)

{-
*Complex> (1,2)*.(3,4)
(-5.0,10.0)
-}


re :: (Double, Double) -> Double
re (a,b) = a

{-
*Complex> re (1,2)
1.0

*Complex> re (5,4)
5.0
-}

im :: (Double, Double) -> Double
im (a,b) = b

{-
*Complex> im (1,2)
2.0

*Complex> im (5,4)
4.0
-}

-- funkcjê i zwracaj¹c¹ jako wynik jednostkê urojon¹?




