-- reverse a list

reversi :: [x] -> [x]

reversi []      = []
reversi (x:xs)  = reversi xs ++ [x]

main = do
  print $ reversi [1,2,3,4,5]
