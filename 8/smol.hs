smol :: Eq n => [n] -> [n]

smol [] = []

smol [x] = [x]

smol (x:xs)
  | x == head xs  = smol xs
  | otherwise     = x:(smol xs)
  
main = do
  print $ smol [1,1,1,1,2,1,1,3,4,5]
  
  
  