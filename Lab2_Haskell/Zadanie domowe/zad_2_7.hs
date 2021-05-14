module Triangle where

trArea1 :: Floating a => a -> a -> a
trArea1 a h = (a*h)/2

trArea2 :: Floating a => a -> a -> a -> a
trArea2 a b c = sqrt ( (a/2 + b/2 + c/2)*( (a/2 + b/2 + c/2)-a )*( (a/2 + b/2 + c/2)-b )*( (a/2 + b/2 + c/2)-c ) )

trArea3 :: Floating a => a -> a -> a -> a
trArea3 a b alfa = (1/2)*a*b*sin(alfa)