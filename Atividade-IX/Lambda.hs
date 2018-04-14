import System.IO


--Questao 1 --------------
xor :: Bool -> Bool -> Bool
xor a b = (\x y -> ((x) && y) || (x && (y)) ) a b

--Questao 2 --------------
media :: Float -> Float -> Float -> Bool
media a b c = ((\x y z -> if ((x + y + z) / 3) >= 6 then True else False ) a b c)

--Questao 3 ---------------
fib :: Int -> Int
fib n = (\x -> if (x == 1) || (x == 2) then 1 else (fib (x-1) + fib (x-2))) n

--Questao 4 ----------------
--bask :: Int -> Int -> Int
-- duvida, tenho a b c e o x

--Questao 5 ----------------
distancia :: (Float, Float, Float) -> (Float, Float, Float) -> Float
distancia (a1, b1, c1) (a2, b2, c2) = (\x1 y1 z1 x2 y2 z2 -> sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1)+(z2-z1)*(z2-z1)))a1 b1 c1 a2 b2 c2

--Questao 6 ----------------
maior :: Int -> Int -> Int -> Int
maior a b c = (\x y z -> if (x >= y) && (x >= z) then x else if (y >= x) && (y >= z) then y else z) a b c

--Questao 7 ---------------
par_ou_impar :: [Int] -> [String]
par_ou_impar (x) = (map (\x -> if (x `mod` 2) == 0 then "par" else "impar") x)

--Questao 8 --------------

escrever :: IO ()
escrever = do
  arq <- openFile "text.txt" AppendMode -- WriteMode nao mantem o conteudio no arquivo, para add no fim AppendMode
  hPutStr arq "Escrita no arquivo\n"
  putStrLn "Escreveu\n"
  hFlush arq
  hClose arq

leitura :: IO ()
leitura = do
  arq <- openFile "text.txt" ReadMode
  conteudo <- hGetContents arq
  putStrLn conteudo
  hClose arq

escrita_direta :: IO ()
escrita_direta = do
  writeFile "text.txt" "Mo da hora essa parada"
  putStrLn "escreveu"

leitura_direta :: IO ()
leitura_direta = do
  conteudo <- readFile "text.txt"
  putStrLn conteudo

anexar_direta :: IO ()
anexar_direta = do
  appendFile "text.txt" "Append Funciona mermo"
  putStrLn "escreveu"
