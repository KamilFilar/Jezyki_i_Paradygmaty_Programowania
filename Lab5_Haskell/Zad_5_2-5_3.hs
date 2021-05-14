module Integration where

rectangleRule :: (Float -> Float) -> Float -> Float -> Int -> Float
rectangleRule (f) a b n = h * sum(map f points)
  where
    h = (b - a) / fromIntegral(n)
    points = [a + fromIntegral(i) * h | i <- [1 .. n]]

{-
Sinus:
*Integration> rectangleRule sin 0 pi 100
1.9998356

*Integration> rectangleRule sin 0 pi 1000
1.9999988


Sqrt:
*Integration> rectangleRule sqrt 0 1 100
0.6714629

*Integration> rectangleRule sqrt 0 1 1000
0.6671604


x^2 (u¿ycie sekcji):
*Integration> rectangleRule (^2) 0 1 100
0.33835

*Integration> rectangleRule (^2) 0 1 1000
0.33383355


x^3 + 2x (u¿ycie notacji lambda):
*Integration> rectangleRule (\x -> x^3 + 2*x) 0 2 100
8.120399

*Integration> rectangleRule (\x -> x^3 + 2*x) 0 2 1000
8.012006
-}

trapezoidalRule :: (Float -> Float) -> Float -> Float -> Int -> Float
trapezoidalRule (f) a b n = h * ((f a / 2) + sum (map f points) + (f b / 2))
  where
    h = (b - a) / fromIntegral (n)
    points = [a + fromIntegral (i) * h | i <- [1 .. n -1]]

integral11 = trapezoidalRule sin 0 pi 100 -- for 100 partitions

integral11' = trapezoidalRule sin 0 pi 1000 -- for 1000 partitions

integral22 = trapezoidalRule sqrt 0 1 100

integral22' = trapezoidalRule sqrt 0 1 1000

integral33 = trapezoidalRule (^ 2) 0 1 100 -- with the use of section

integral33' = trapezoidalRule (^ 2) 0 1 1000

integral44 = trapezoidalRule (\x -> x ^ 3 + 2 * x) 0 2 100 -- with the use of lambda notation

integral44' = trapezoidalRule (\x -> x ^ 3 + 2 * x) 0 2 1000