module Vectors where


infixl 6 +.
(+.) :: (Double, Double, Double) -> (Double, Double, Double) -> (Double, Double, Double)
(a,b,c) +. (d,e,f) = (a+d, b+e, c+f)

{-
*Vectors> (1,2,3)+.(1,2,3)
(2.0,4.0,6.0)
-}


infixl 6 -.
(-.) :: (Double, Double, Double) -> (Double, Double, Double) -> (Double, Double, Double)
(a,b,c) -. (d,e,f) = (a-d, b-e, c-f)

{-
*Vectors> (1,2,3)-.(4,5,6)
(-3.0,-3.0,-3.0)
-}


-- mno¿enie skalarne wektorów
infixl 7 *.
(*.) :: (Double, Double, Double) -> (Double, Double, Double) -> Double
(a,b,c) *. (d,e,f) = ((a*d)+(b*e)+(c*f))

{-
*Vectors> (1,2,3)*.(1,2,3)
14.0
-}


-- mno¿enie wektowrowe
infixl 7 ***
(***) :: (Double, Double, Double) -> (Double, Double, Double) -> (Double, Double, Double)
(a,b,c) *** (d,e,f) = ( ( b*f - c*e ) , ( c*d - a*f ) , ( a*e - b*d ) )

{-
*Vectors> (1,2,3)***(1,2,3)
(0.0,0.0,0.0)

*Vectors> (1,2,3)***(4,5,6)
(-3.0,6.0,-3.0)
-}