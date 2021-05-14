module Math where

f x | x < -10 = x^2
    | x < 0 = sin x
    | x <= 2 = sqrt x

{-
W tym przypadku dla argumentów wiêkszych od 2 funkcja zwraca:
wyj¹tek (zapisany w 20 linii).

*Math> f (-11)
121.0

*Math> f (-2)
-0.9092974268256817

*Math> f 2
1.4142135623730951

*Math> f 5
*** Exception: zad_3_1.hs:(3,1)-(5,21): Non-exhaustive patterns in function f
-}


f' x | x < -10 = x^2
     | -10 <= x && x < 0 = sin x
     | 0 <= x && x <= 2 = sqrt x

{-
W tym przypadku dla argumentów wiêkszych od 2 funkcja zwraca:
wyj¹tek (zapisany w 40 linii).

*Math> f' (-11)
121.0

*Math> f' (-2)
-0.9092974268256817

*Math> f' 2
1.4142135623730951

*Math> f' 5
*** Exception: zad_3_1.hs:(7,1)-(9,32): Non-exhaustive patterns in function f'
-}


f'' x | x < -10 = x^2
      | -10 <= x && x < 0 = sin x
      | 0 <= x && x <= 2 = sqrt x
      | otherwise = undefined

{-
W tym przypadku dla argumentów wiêkszych od 2 funkcja zwraca:
wyj¹tek okreœlony jako undefined (linia 61).

*Math> f'' (-11)
121.0

*Math> f'' (-2)
-0.9092974268256817

*Math> f'' 2
1.4142135623730951

*Math> f'' 5
*** Exception: Prelude.undefined
-}


myF x = if x < (-10) then x^2
      else if (-10) <= x && x < 0 then sin(x)
      else if 0 <= x && x <= 2 then sqrt(x)
      else 0

{-
W tym przypadku dla argumentów wiêkszych od 2 funkcja zwraca:
ostatni¹ wartoœæ else = 0 (linia 68).


*Math> myF (-11)
121.0

*Math> myF (-2)
-0.9092974268256817

*Math> myF 2
1.4142135623730951

*Math> myF 5
0.0
-}