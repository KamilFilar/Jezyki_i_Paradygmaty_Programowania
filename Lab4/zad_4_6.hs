module Lists where

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
{-
*Lists> string2int "5"
5
-}

string2int' :: String -> Int
string2int' x = read x
{-
*Lists> string2int' "51"
51
-}