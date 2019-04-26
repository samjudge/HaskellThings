--print all but the last element of a list

allButLast :: Eq n => [n] -> n
allButLast xs = last (init xs)

-- out

main = do
  print $ allButLast [1,2,3,4,5]