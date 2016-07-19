  stepReverseSign :: (Fractional a, Ord a) => a -> a -> a
  stepReverseSign a b
    | a < 0 = abs(a) + b
    | a > 0 = -(a + b)
    | a == 0 = 0
