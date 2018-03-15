triangulo :: Int -> Int -> Int -> Bool
triangulo x y z = if x >= y && x>=z
  then
    x<(y+z)
  else
    if y>=x && y>=z
      then y<(x+z)
      else
        if z>=x && z>=y
          then z<(x+y)
          else False

main = do
  x <- getLine
  let x1  = (read x :: Int)

  y <- getLine
  let y1  = (read y :: Int)

  z <- getLine
  let z1  = (read z :: Int)
  print (triangulo x1 y1 z1)
