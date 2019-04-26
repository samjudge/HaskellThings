-- find the k'th element of a list, indexed from 1

kth2 :: Eq n => [n] -> Int -> n
kth2 xs n = xs !! (n - 1)

-- out

main = do
  print $ kth2 [1,2,3,4,5] 2