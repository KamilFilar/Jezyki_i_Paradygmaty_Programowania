module Solids where

pyramidVolume :: Floating a => a -> a -> a
pyramidVolume h a = (1/3)*h*a^2

{-
*Solids> pyramidVolume 1 2
1.3333333333333333

*Solids> pyramidVolume 3 5
24.999999999999996
-}

