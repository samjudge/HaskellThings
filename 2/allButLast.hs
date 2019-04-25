--print all but the last element of a list

myLast :: Eq n => [n] -> n
myLast (x:xs)
  | xs == []    = x 
  | otherwise   = n
  where n = myLast xs

allButLast :: Eq n => [n] -> n
allButLast xs = myLast (init xs)
        
main = do
  print $ allButLast [1,2,3,4,5]