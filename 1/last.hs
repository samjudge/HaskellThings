--print the last number of a list

myLast :: Eq n => [n] -> n
myLast (x:xs)
  | xs == []    = x 
  | otherwise   = n
  where n = myLast xs

main = do
  print $ myLast [1,2,3,4,5] 
