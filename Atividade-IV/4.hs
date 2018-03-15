xorsinha :: Bool -> Bool -> Bool
xorsinha True True = False
xorsinha False False = False
xorsinha _ _ = True

main = do
  a <- getLine
  let a1  = (read a :: Bool)
  b <- getLine
  let b1  = (read b :: Bool)
  print (xorsinha a1 b1)
