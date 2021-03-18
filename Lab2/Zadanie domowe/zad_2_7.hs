module Triangle where

trArea1 :: Floating a => a -> a -> a
trArea1 a h = (a*h)/2

trArea2 :: Floating a => a -> a -> a -> a
trArea2 a b s = (a*b*sin(s))/2

trArea3 :: Floating a => a -> a -> a -> a -> a
trArea3 a k1 k2 k3 = ((a^2)*((sin(k1)*sin(k2))/sin(k3)))/2