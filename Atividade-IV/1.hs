elevado :: Int -> Int -> Int
elevado x y | (y == 1) = x
            | otherwise = x*(elevado x (y-1))


main = do
  putStrLn "Digite o primeiro numero: "
  x <- getLine
  let x1  = (read x :: Int)
  putStrLn "Digite o segundo numero: "
  y <- getLine
  let y2  = (read y :: Int)
  let retorno = (elevado x1 y2)
  print retorno
