import Square
import Sum

sumSquares :: Int -> Int -> Int
sumSquares a b
    | a == b        = sq a
    | otherwise     = sq b + sumSquares a (b-1)
    
higherOrderSum :: (Int -> Int) -> Int -> Int -> Int
higherOrderSum foo a b
    | a == b        = foo a
    | otherwise     = x  + y
    where
        x = foo b
        y = higherOrderSum foo a (b-1)
        
hoSumSquares :: Int -> Int -> Int
hoSumSquares a b = higherOrderSum sq a b

higherOrderSequenceApplication :: (Int -> Int) -> Int -> Int -> (Int ->Int -> Int)-> Int
higherOrderSequenceApplication f a b ff
    | a == b            = f a
    | otherwise         = ff x y
    where
        x =  f b
        y =  higherOrderSequenceApplication f a (b-1) ff


