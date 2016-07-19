module Sum
(
    sumInts
    
)where

sumInts :: Int -> Int -> Int
sumInts a b
    | a == b        = a
    | otherwise     = b + sumInts a (b-1)