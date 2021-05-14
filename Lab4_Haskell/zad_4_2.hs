module Lists where

{-
*Lists> let f0 (x:xs) = x
*Lists> let f1 (_:x:xs) = x
*Lists> let f2 (_:_:x:xs) = x

*Lists> f0 [3,5,7]
3

*Lists> f1 [3,5,7]
5

*Lists> f2 [3,5,7]
7

*Lists> f0 []
*** Exception: <interactive>:11:5-17: Non-exhaustive patterns in function f0
-}

-- 4.2.1
sum1 [] = 0
sum1 [_] = 0
sum1 (_:x:xs) = x + sum1 xs


{-
*Lists> sum1 []
0

*Lists> sum1 [3]
0

*Lists> sum1 [3,5,7]
5

*Lists> sum1 [3,5,7,9]
14

*Lists> sum1 [1,2,1,2,1,2]
6
-}


-- 4.2.2
sum2 [] = 0
sum2 [x] = x
sum2 [x,_] = x
sum2 (x:_:xs) = x + sum2 xs

{-
*Lists> sum2 []
0

*Lists> sum2 [1]
1

*Lists> sum2 [2,3]
2

*Lists> sum2 [1,2,3,4]
4

*Lists> sum2 [1,2,3,4,5,6,7,8]
16
-}


-- 4.2.3
sum3 [] = 0
sum3 [_] = 0
sum3 [_,_] = 0
sum3 (_:_:x:xs) = x + sum3 xs

{-


*Lists> sum3 []
0

*Lists> sum3 [1]
0

*Lists> sum3 [2,2]
0

*Lists> sum3 [1,2,3]
3

*Lists> sum3 [1,1,3,1,1,3,1,1,3]
9

*Lists> sum3 [1,2,5,1,2,5,1,2,5,1,2,5]
20
-}





{- Task 1 *

1. Analyze the function call sum1 [3,5,7].

* sum1 [3,5,7] =

  (_:x:xs) = [3,5,7]

  x = 5
  xs = [7]

  = 5 + sum1 [7] = 5 + 0 = 5
  
* sum1 [7] =

  [_] = [7]

  = 0

2. Analyze the function call sum1 [3,5,7,9].

* sum1 [3,5,7,9] =

  (_:x:xs) = [3,5,7,9]

  x = 5
  xs = [7,9]

  = 5 + sum1 [7,9] = 5 + 9 = 14
  
* sum1 [7,9] =

  (_:xs) = [7,9]

  [_] = [7] = 0
  xs = [9] = 9
  = 0 + 9 = 9
-}


-- 4.2.2 *


{- Task 2 *

1. Analyze the function call sum2 [3,5,7].

* sum2 [3,5,7] =

  (x:_:xs) = [3,5,7]

  x = 3
  xs = [7]

  = 3 + sum2 [_,7] = 3 + 7 = 10
  
* sum2 [_,7] =

  [_] = [] = 0
  xs = [7] = 7

  = 0 + 7 = 7

2. Analyze the function call sum2 [3,5,7,9].
   * sum2 [3,5,7,9] =

  (x:_:xs) = [3,5,7,9]

  x = 3
  xs = [7]

  = 3 + sum2 [5,7,9] = 3 + 7 = 10
  
* sum2 [5,7,9] =

  [_] = [5] = 0
  xs = [7] = 7
  [_] = [9] = 0

  = 0 + 7 + 0 = 7
-}