module Solids where

-- objêtoœæ kuli
sphereVolume :: Floating a => a -> a
sphereVolume r = (4/3)*pi*r^3

{-
*Solids> sphereVolume 5
523.5987755982989

*Solids> sphereVolume 1
4.1887902047863905
-}


-- objêtoœæ sto¿ka
coneVolume :: Floating a => a -> a -> a
coneVolume r h = (1/3)*pi*h*r^2

{-
*Solids> coneVolume 1 2
2.0943951023931953

*Solids> coneVolume 2 3
12.566370614359172
-}


-- objêtoœæ prostopad³oœcianu
cuboidVolume :: Floating a => a -> a -> a -> a
cuboidVolume a b c = a*b*c

{-
*Solids> cuboidVolume 1 2 3
6.0

*Solids> cuboidVolume 3 4 5
60.0
-}
