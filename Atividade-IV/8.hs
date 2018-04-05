baskaraPos :: Float -> Float -> Float -> Float
baskaraPos a b c = (-b + sqrt(delta a b c))/(2*a)

baskaraNeg :: Float -> Float -> Float -> Float
baskaraNeg a b c = (-b - sqrt(delta a b c))/(2*a)

delta :: Float -> Float -> Float -> Float
delta a b c = ((b*b) - 4*a*c)

main = do
  x <- getLine
  let x1  = (read x :: Float)

  y <- getLine
  let y1  = (read y:: Float)

  z <- getLine
  let z1  = (read z :: Float)
  print(baskaraPos x1 y1 z1)
