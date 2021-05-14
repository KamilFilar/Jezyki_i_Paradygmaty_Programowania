module Lists where

-- 4.5.1

ctgx x [] = 0
ctgx x (a:as) | a > x = 1 + ctgx x as
              | otherwise = ctgx x as
{-
*Lists> cgtx 3 [1,2,3,4,5]
2
-}

-- 4.5.2 (*)
cltx x [] = 0
cltx x (a:as) | x > a = 1 + cltx x as
              | otherwise = cltx x as

{-*
Lists> cltx 3 [1,2,3,4,5]
2
*Lists> cltx 2 [0,1,2,3,4,5,6]
2
*Lists> cltx 5 [1,2,3,4,5,6]
4
-}

-- 4.5.3
gtx x [] = []
gtx x (a:as) | a > x = a : gtx x as
             | otherwise = gtx x as
{-
*Lists> gtx 3 [1,2,3,4,5]
[4,5]
-}

-- 4.5.4 (*)
ltx x [] = []
ltx x (a:as) | x >= a = a : ltx x as
             | otherwise = ltx x as

{-
*Lists> ltx 3 [1,2,3,4,5]
[1,2,3]

*Lists> ltx 2 [0,1,2,3,4,5,6]
[0,1,2]

*Lists> ltx 5 [0,1,2,3,4,5,6,7]
[0,1,2,3,4,5]
-}

