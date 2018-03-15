absoluto :: Int -> Int
absoluto x | x >= 0 = x
          | otherwise = -x

main = do
  putStrLn "Digite o primeiro numero: "
  x <- getLine
  let x1  = (read x :: Int)
  let retorno = (absoluto x1)
  print retorno
