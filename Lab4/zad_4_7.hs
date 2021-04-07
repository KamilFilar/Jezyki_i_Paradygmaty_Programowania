module Lists where


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

-- 4.7.1
suma1 = sum (map (1 /) [1..100])
{-
*Lists> suma1
5.187377517639621
-}

suma1' = sum( map (\ x -> 1/x) [1..100] )
{-
*Lists> suma1'
5.187377517639621
-}

suma1'' = sum( [1/x | x <- [1..100]] )
{-
*Lists> suma1''
5.187377517639621
-}



-- 4.7.2
iloczyn1 = product ( map(\ x -> ((1+x)/(2+x))) [1..50] )
{-
*Lists> iloczyn1
3.846153846153846e-2
-}

iloczyn1' = product([(1+x)/(2+x) | x <- [1..50]])
{-
*Lists> iloczyn1'
3.846153846153846e-2
-}

iloczyn1'' = foldl (*) 1 [(1+x)/(2+x) | x <- [1..50]]
{-
*Lists> iloczyn1''
3.846153846153846e-2
-}



-- 4.7.3 (*)
suma2 = sum ( map (1 /) [x^2 | x <- [1..1000]] )
{-
*Lists> suma2
1.6439345666815615
-}

-- 4.7.4  (*)
suma3 = sum ( [ ( (sqrt x) - 1 ) / x | x <- [1..1000] ] )
{-
*Lists> suma3
54.315537904692945
-}

-- 4.7.5 (*)
suma4 = sum ( [ (x+1) / (x^3) | x <- [1..1000] ] )
{-
*Lists> suma4
2.8459909703409068
-}




