module Lists where

import Data.Char

{-
Prelude> :t map
map :: (a -> b) -> [a] -> [b]

Prelude> map (^2) [1,3,5]
[1,9,25]

Prelude> map (\x -> x*x) [1,3,5]
[1,9,25]

Prelude> let f = (^2) in map f [1,3,5]
[1,9,25]

Prelude> sum [1,3,5]
9

Prelude> sum [3,3,3]
9

Prelude> sum [5,5,5]
15

Prelude> sqrt (sum [1,3,5])
3.0
-}

sumOfSquares' x = sum ( map (^2) x )

{- Testy
*Lists> sumOfSquares' [1,2,3]
14

*Lists> sumOfSquares' [1,3,5]
35
-}


{-
*Lists> :t (:)
(:) :: a -> [a] -> [a]
*Lists> 3:[]
[3]
*Lists> 3:5:[]
[3,5]
*Lists> 3:[5]
[3,5]
*Lists> let f (x:xs) = (x, xs)
*Lists> f [3,5,7]
(3,[5,7])
-}

sumOfSquares [] = 0
sumOfSquares [x] = x*x  -- niepotrzebne
sumOfSquares (x:xs) = x*x + sumOfSquares xs

{-
*Lists> sumOfSquares [1,2,3]
14
-}









