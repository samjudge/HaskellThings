
-- returns a tuple of symbols of
-- (r0, r1)
-- where r0's members are equal to arg1 until where the
-- first non-equal symbol found in arg0 is found
-- and r1 is the remaining members of the list

frontload :: Eq n => [n] -> n -> ([n],[n])

frontload [] n = ([],[])

frontload (x:xs) n
  | x == n        = let (front, rest) = frontload xs n
                    in (x:front, rest)
  | otherwise     = ([], x:xs)

-- frontload multiple series of symbols

pack [] = []

pack (x:xs) = 
  front : pack rest
  where (front, rest) = frontload xs x

   
main = do
  print $ pack [1,1,1,1,2,2,2,3,3,3]