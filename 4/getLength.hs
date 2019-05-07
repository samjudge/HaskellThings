-- get the number of items in a list

getLength :: [x] -> Int
getLength []        = 0
getLength (x:xs)    = 1 + getLength xs

main = do
  print $ getLength [1,2,3,4,5]
