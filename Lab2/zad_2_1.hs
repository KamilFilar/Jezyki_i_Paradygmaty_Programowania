{-
*Main> :i +
class Num a where
  (+) :: a -> a -> a
  ...
        -- Defined in `GHC.Num'
infixl 6 +

*Main> :i -
class Num a where
  ...
  (-) :: a -> a -> a
  ...
        -- Defined in `GHC.Num'
infixl 6 -

*Main> :i *
class Num a where
  ...
  (*) :: a -> a -> a
  ...
        -- Defined in `GHC.Num'
infixl 7 *

*Main> :i /
class Num a => Fractional a where
  (/) :: a -> a -> a
  ...
        -- Defined in `GHC.Real'
infixl 7 /



   *Main> 2^100
1267650600228229401496703205376

   *Main> (12+23)*(40-21)
665
   (12+23)(40-21) -> zwraca b³¹d z typami

   *Main> 2^100/((12+23)*(40-21))
1.9062415041026007e27

   *Main> sqrt 2
1.4142135623730951

   *Main> sqrt((12+23)*(40-21))
25.787593916455254

   *Main> 2+-3  
jest to niewykonalne

   *Main> 2+(-3)
-1

-}