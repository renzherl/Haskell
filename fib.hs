fib :: (Num a, Eq a) => a -> [a]
fib 0 = [0]
fib 1 = [1,0]
fib 2 = [1,1,0]
fib n = ((head pre) + (head prepre )) : pre
    where pre = fib (n-1)
          prepre = fib (n-2)
