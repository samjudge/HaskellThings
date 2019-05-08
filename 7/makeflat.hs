-- squash a list of lists into a single list

data NestedList a = Elem a | List [NestedList a]

makeFlat :: NestedList n -> [n]

makeFlat (List []) = []

makeFlat (Elem x) = [x]

makeFlat (List (x:xs)) = makeFlat x ++ makeFlat (List xs)

main = do
  print $ makeFlat $ List [Elem 1, List [Elem 2, Elem 3], List [ Elem 4, Elem 5, Elem 6, Elem 7], Elem 8, Elem 9]