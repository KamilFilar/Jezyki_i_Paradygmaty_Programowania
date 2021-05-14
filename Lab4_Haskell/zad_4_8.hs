module Lists where

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

-- 4.8.1 (*)
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

-- 4.8.2 (*)
primeTriples :: [Integer] -> [(Integer, Integer, Integer)]
primeTriples (x:y:z:[]) | (isPrime x  == True  &&  isPrime y == True && isPrime z == True && x + 2 == y && y + 2 == z) = [(x,y,z)]
                        | otherwise  = []

primeTriples (x:y:z:xyzs) | (isPrime x  == True  &&  isPrime y == True && isPrime z == True && x + 2 == y && y + 2 == z) = (x,y,z) : primeTriples (z:xyzs)
                          | otherwise  = primeTriples (z:xyzs)
                          
{-
*Lists> primeTriples [3,5,7]
[(3,5,7)]

*Lists> primeTriples [2,2,5]
[]

*Lists> primeTriples [3,5,7,9,11,13,15]
[(3,5,7)]
-}
