-- find the k'th element of a list, indexed from 1

kth :: Eq n => [n] -> Int -> n
kth (x:xs) n
  | xs == []    = error "Kth -> Index `n` out of range"
  | n == 1      = x
  | n < 1       = error "Kth -> Illegal index `n` <= 0, index `n` > 0 required"
  | otherwise   = kth xs (n - 1)
  
-- out

main = do
  print $ kth [1,2,3,4,5] 2