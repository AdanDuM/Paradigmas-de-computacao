avaliacao :: Float ->  String
avaliacao x | x < 18.0 = "menor de idade"
            | otherwise = "maior de idade"
main  = do
  putStrLn "Informe sua idade: "
  idade <- getLine
  putStrLn ("sua idade é: "++ idade)
  let idade1  = (read idade :: Float)
  let retorno = (avaliacao idade1)
  print retorno
