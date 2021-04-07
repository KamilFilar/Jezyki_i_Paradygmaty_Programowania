module Lists where
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

-- 4.3.2 (*)
-- Napis -> (ma³e, du¿e)

countLowerUpper :: String -> (Int, Int)
countLowerUpper [] = (0,0)
countLowerUpper (x:xs) | 'a' <= x && x <= 'z' = (1, 1+(countLowerUpper xs::Int) )
                  | otherwise = (0, 1+(countLowerUpper xs::Int) )
