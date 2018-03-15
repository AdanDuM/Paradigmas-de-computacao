media :: Int -> Int -> Int -> String
media x y z | (div (x+y+z) 3) >= 6 = "Aprovado"
            | otherwise = "Reprovado"
main = do
  x <- getLine
  let x1  = (read x :: Int)

  y <- getLine
  let y1  = (read y :: Int)

  z <- getLine
  let z1  = (read z :: Int)
  print (media x1 y1 z1)
