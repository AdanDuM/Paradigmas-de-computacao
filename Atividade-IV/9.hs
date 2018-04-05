vetorDifer :: Int -> Int -> Int -> Int -> Int -> Int -> Float
vetorDifer a1 b1 c1 a2 b2 c2 = sqrt(((a2-a1)*(a2-a1))+((b2-b1)*(b2-b1))+((c2-c1)*(c2-c1)))


main = do
  x <- getLine
  let x1  = (read x :: Int)

  y <- getLine
  let y1  = (read y:: Int)

  z <- getLine
  let z1  = (read z :: Int)

  a <- getLine
  let a1  = (read a :: Int)

  b <- getLine
  let b1  = (read b:: Int)

  c <- getLine
  let c1  = (read c :: Int)
  print(vetorDifer x1 y1 z1 a1 b1 c1)
