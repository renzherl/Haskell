power :: Int -> Int -> Int
power x y
    | y < 0 = error "error"
    | y == 0 = 1
    | otherwise = x * power x (y-1)
