module Trees where
-- 5.4
data Tree a = Leaf a
            | Node a (Tree a) (Tree a)
            | Null

treeSize :: Tree a -> Int
treeSize Null = 0 
treeSize (Leaf _) = 1
treeSize (Node _ left right) = 1 + treeSize left + treeSize right

showTree :: Show a => Tree a -> String
showTree Null = "()"
showTree (Leaf x) = show x
showTree (Node x left right) = show x ++
                               " L(" ++ showTree left ++
                               ") R(" ++ showTree right ++ ")"

bt1 = Node 7 (Node 4 (Leaf 2) (Leaf 5)) (Leaf 10)

bt2 = Node 7 (Node 4 (Leaf 2) (Leaf 5))
             (Node 10 (Leaf 9) (Node 13 (Leaf 11) (Leaf 15)))

bt3 = Node 7 (Leaf 1) Null

-- 5.5

{-
1. Adding value to an empty tree

              5
add 5 o   =   *

2. Adding value to a one-element tree

      5       5
add 5 *   =   *

      5       5
add 3 *   =   *
             / \
           3*   o

      5       5
add 7 *   =   *
             / \
            o   *7

3. Adding value to a non-trivial tree

      5       5
add 5 *   =   *
    / \   / \
   / \ / \ / \ / \

      5       5
add 3 *   =   *
    / \   / \
   / \ / \ /3\ / \

      5       5
add 7 *   =   *
    / \   / \
   / \ / \ / \ /7\
-}

add :: Ord a => a -> Tree a -> Tree a
add x Null = Leaf x
add x (Leaf y) | x == y = Leaf y
               | x < y  = Node y (Leaf x) Null
               | x > y  = Node y Null (Leaf x)
add x (Node y left right) | x == y = Node y left right
                          | x < y  = Node y (add x left) right
                          | x > y  = Node y left (add x right)
 
btx = Node 8 (Node 4 (Leaf 2) (Leaf 6)) (Node 12 (Leaf 10) Null)

-- 5.6

elemTree :: Ord a => a -> Tree a -> Bool
elemTree e (Null) = False
elemTree e (Leaf x) = e ==x
elemTree e (Node x left right) | e == x = True
                               | e < x = elemTree e left
                               | e > x = elemTree e right

countLeaves :: Tree a -> Int
countLeaves Null = 0
countLeaves (Leaf x) = 1
countLeaves (Node x left right) = countLeaves left + countLeaves right
-- complete the definition

{- Task 3

1. Add value 6 to the drawing of the b1 tree.

2. Add value 8 to the result of the previous task.

       7
bt1   / \
     4   10
    / \
   2   5
-}

-- solution here

{-
*Main> showTree (add 6 bt1)
...
*Main> showTree (add 8 (add 6 bt1))
...
-}

