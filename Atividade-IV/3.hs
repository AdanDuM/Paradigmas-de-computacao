areaTr :: Float -> Float -> Float
areaTr b a = (b*a)/2

main = do
  putStrLn "Digite valor da base: "
  base <- getLine
  let base1  = (read base :: Float)
  putStrLn "Digite valor da altura: "
  altura <- getLine
  let altura1  = (read altura :: Float)
  let retorno = (areaTr base1 altura1)
  print retorno
