-- check if a given list is a palindrome

isPali :: Eq n => [n] -> Bool

isPali [] = True

isPali [_] = True

isPali (x:xs)
  | x == last xs        = isPali $ init xs
  | otherwise           = False
  
main = do
  print $ isPali "maam"