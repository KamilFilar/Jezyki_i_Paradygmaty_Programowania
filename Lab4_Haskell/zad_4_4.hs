module Lists where

import Data.Char

string2bools :: String -> [Bool]
string2bools [] = []
string2bools (x:xs) = isLower x : string2bools xs

{-
*Lists> string2bools ""
[]

*Lists> string2bools "ala"
[True,True,True]

*Lists> string2bools "Ala"
[False,True,True]

*Lists> string2bools "KOT"
[False,False,False]

*Lists> string2bools "a b C"
[True,False,True,False,False]
-}