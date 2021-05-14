module Lists where

import Data.Char

-- 4.1.1

{-
*Lists> :t map
map :: (a -> b) -> [a] -> [b]
*Lists> map (^2) [1,3,5]
[1,9,25]
*Lists> map (\x -> x*x) [1,3,5]
[1,9,25]
*Lists> let f = (^2) in map f [1,3,5]
[1,9,25]
*Lists> sum [1,3,5]
9
*Lists> sqrt (sum [1,3,5])
3.0
*Lists> :t sum
sum :: (Num a, Foldable t) => t a -> a
*Lists> :t sqrt
sqrt :: Floating a => a -> a
-}

sumOfSquares' x = sum (map (^2) x )

{-
*Lists> sumOfSquares' [1,3,5]
35
-}

-- 4.1.2 

{-
*Lists> :t (:)
(:) :: a -> [a] -> [a]
*Lists> 3 : []
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
sumOfSquares [x] = x*x
sumOfSquares (x:xs) = x*x + sumOfSquares xs

{-
*Lists> sumOfSquares [1,2,3]
14
-}

--4.2.1

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

         *     *
        0  1  2  3
list = [3, 5, 7, 9]

-}

-- 4.2
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
-}

-- 4.2.2

sum2 [] = 0
sum2 [x] = x
sum2 (x:_:xs) = x + sum2 xs

{-
*Lists> sum2[3,5,7]
10
*Lists> sum2[3,5,7,9]
10
-}

-- 4.2.3

sum3 [] = 0
sum3 [_] = 0
sum3 [_,_] = 0
sum3 [_,_,_] = 0
sum3 (_:_:_:x:xs) = x + sum3 (x:xs)

{-
*Lists> sum3[3,5,7]
0
*Lists> sum3[3,5,7,9]
9
-}


-- 4.3

{-
*Lists> :t "cat"
"cat" :: [Char]
*Lists> ['c','a','t']
"cat"
*Lists> 3 : [5,7]
[3,5,7]
*Lists> [3,5] ++ [7]
[3,5,7]
*Lists> 'c' : "at"
"cat"
*Lists> "c" ++ "at"
"cat"
*Lists> let small x = 'a' <= x && x <= 'z'
*Lists> small 'c'
True
*Lists> small 'X'
False
-}

countLower [] = 0
countLower (x:xs) | 'a' <= x && x <= 'z' = 1 + countLower xs
                  | otherwise = 0 + countLower xs

{-
*Lists> countLower "cat Bob"
5
-}
countLowerUpper1 :: String -> (Int,Int)
countLowerUpper1 [] = (0,0)
countLowerUpper1 text = (length (filter isLower text),
                 length (filter isUpper text))
{-
*Lists> countLowerUpper1 "EWQWDWrieiwidiRTRE"
(8,10)
-}
-- 4.5.1                               erwise = gtx x ys
cgtx a [] = 0
cgtx a (x:xs) | x>a = 1 + cgtx a xs
              | otherwise = 0 + cgtx a xs
{-
*Lists> cgtx 3 [1,2,3,4,5]
2
-}
-- 4.5.2
cltx x [] = 0
cltx x (y:ys) | x>y = 1 + cltx x ys
              | otherwise = cltx x ys
{-
*Lists> cltx 5 [1,2,3,4,5]
4
-}
--4.5.3
gtx a [] = []
gtx a (x:xs) | x>a = x : gtx a xs
             | otherwise = gtx a xs
{-
*Lists> gtx 3 [1,2,3,4,5]
[4,5]
-}
-- 4.5.4
ltx x [] = []
ltx x (y:ys) | y <= x = y : ltx x ys
             | otherwise = ltx x ys

-- 4.6

{-
*Lists> :t read
read :: Read a => String -> a
*Lists> :t show
show :: Show a => a -> String
*Lists> read "35"
*** Exception: Prelude.read: no parse
*Lists> read "35" :: Int
35
*Lists> show 35
"35"
-}

string2int x = read x :: Int
string2int' :: String -> Int
string2int' x = read x

{-
*Lists> string2int "35"
35
-}

-- 4.7.1
{-
*Lists> :t sum
sum :: (Num a, Foldable t) => t a -> a
*Lists> :t product
product :: (Num a, Foldable t) => t a -> a
*Lists> sum [1,3,5]
9
*Lists> product [1,3,5]
15
-}
suma1 =sum( map (1 /) [1..100])
suma1' = sum (map (\ x -> 1/x) [1..100])
suma1'' = sum([ 1/x | x<- [1..100]])

{-
*Lists> suma1
5.187377517639621
*Lists> suma1'
5.187377517639621
*Lists> suma1''
5.187377517639621
-}

--4.7.2
iloczyn1 = product(map (\ x -> (1+x)/(2+x)) [1..50])
iloczyn1' = product([(1+x)/(2+x) | x<- [1..50]])
iloczyn1'' = foldl(*) 1 ([(1+x)/(2+x) | x <- [1..50]])
{-
*Lists> iloczyn1
3.846153846153846e-2
*Lists> iloczyn1'
3.846153846153846e-2
*Lists> iloczyn1''
3.846153846153846e-2
-}

--4.7.3
suma2= sum(map(\i->1/(i^2)) [1 .. 1000])
suma2'=sum([1/(i*i) | i <- [1 .. 1000]])
{-
*Lists>suma2
1.6439345666815615
*Lists> suma2'
1.6439345666815615
-}

--4.7.4
suma3 = sum(map(\i->(sqrt i)-1/i) [1 .. 1000])
suma3' = sum([sqrt(i)-(1/i) | i <- [1 .. 1000]])
{-
*Lists> suma3
21089.970416620185
*Lists> suma3'
21089.970416620185
-}

-- 4.7.5
suma4 = sum ( [ (x+1) / (x^3) | x <- [1..1000] ] )

{-
*Lists> suma4
2.8459909703409068
-}

-- 4.8.1
factors :: Integer -> [Integer]
factors n = [x | x <- [1..n], n `mod` x == 0]

prime :: Integer ->Bool
prime n = factors n == [1,n]

primes :: [Integer]
primes = filter prime [2 ..]

pairs :: [Integer] -> [(Integer, Integer)]

pairs (x:y:[])  | x + 2 == y = [(x,y)]
                | otherwise  = []

pairs (x:y:xys) | x + 2 == y = (x,y) : pairs (y:xys)
                | otherwise  = pairs (y:xys)


-- Funkcja do zadañ 4.8.1 i 4.8.2
isPrime :: Integer -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime n | (length [x | x <- [2 .. n-1], mod n x == 0]) > 0 = False
          | otherwise = True

-- 4.8.1
primePairs :: [Integer] -> [(Integer, Integer)]
primePairs (x:y:[]) | (isPrime x  == True  &&  isPrime y == True && x + 2 == y) = [(x,y)]
                    | otherwise  = []

primePairs (x:y:xys) | (isPrime x  == True  &&  isPrime y == True && x + 2 == y) = (x,y) : primePairs (y:xys)
                     | otherwise  = primePairs (y:xys)
                     
{-
*Lists> primePairs [3,5,6,8]
[(3,5)]

*Lists> primePairs [3,5,7,9]
[(3,5),(5,7)]

*Lists> primePairs [2,4,6,8]
[]

*Lists> primePairs [3,5,10,15,21]
[(3,5)]
-}

--4.8.2
triples :: [Integer] -> [(Integer, Integer, Integer)]
triples (x:y:z:[]) | x + 2 == y && y+2 ==z
                   && prime x && prime y && prime z =[(x,y,z)]
                   |otherwise = []
primeTriples (x:y:z:xys) | x + 2 == y && y + 2 == prime x
                         && prime y && prime z
                         = ( x,y,z) : primeTriples (y:z:xys)
                         | otherwise = primeTriples (y:z:xys)