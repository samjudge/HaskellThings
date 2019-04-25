append n (x:xs)
  | xs == []    = x:n:[]
  | otherwise   = x:(append n xs)

backwards (x:xs)
  | xs == []    = x:[]
  | otherwise   = append x (backwards xs)

main = do
  print (backwards [1,2,3,4,5])