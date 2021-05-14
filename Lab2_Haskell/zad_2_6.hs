module Math where

f1 x = x - 2 {- Tradycyjny -}
f1' x = x + (-2) {- Tradycyjny -}
f1'' = (+ (-2)) {- Sekcja -}

f2 x = mod x 5  {- Tradycyjny -}
f2' x = x `mod` 5 {- Tradycyjny -}
f2'' = (`mod` 5)  {- Sekcja -}

f3 x = x==10   {- Tradycyjny -}
f3' = (==10)   {- Sekcja -}

f4 x = x `div` 8  {- Tradycyjny -}
f4' = (`div` 8)   {- Sekcja -}

f5 x = x > 100  {- Tradycyjny -}
f5' = (> 100)   {- Sekcja -}

f6 x = rem 5 x   {- Tradycyjny -}
f6' = (`rem` 5)   {- Sekcja -}

f7 x = 8 `div` x  {- Tradycyjny -}
f7' = (`div` 8)   {- Sekcja -}

f8 x = x^3  {- Tradycyjny -}
f8' = (^ 3) {- Sekcja -}

{-
*Math> f1 5
3

*Math> f1' 5
3

*Math> f1'' 5
3

*Math> f2 6
1

*Math> f2' 6
1

*Math> f2'' 6
1

*Math> f3 10
True

*Math> f3' 11
False

*Math> f4 9
1

*Math> f4' 9
1

*Math> f5 5
False

*Math> f5' 106
True

*Math> f6 6
5

*Math> f6' 5
0

*Math> f7 8
1

*Math> f7' 9
1

*Math> f8 2
8
-}