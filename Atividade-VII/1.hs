--Questão 3 ----------------------------------
class (Integral x) => MyInt x where
  bigger :: x -> x -> x
  smaller :: x -> x -> x
  par :: x -> Bool
  impar :: x -> Bool
  primo :: x -> Bool
  divisores :: x -> [x] -- meu metodo
  mdc :: x -> x -> x
  (===) :: x -> x -> Bool
  (+++) :: x -> x -> x-- meu operador

  bigger a b | a > b = a
             | otherwise = b

  smaller a b | a < b = a
              | otherwise = b

  par a | (mod 2 a) == 0 = True
        | otherwise = False

  impar a | (mod 2 a) == 0 = False
          | otherwise = True

  primo a = divisores a == [1,a]
  -- Metodo que tras todos os divisores de um determinado n
  divisores n = [a | a <- [1..n], n`mod`a == 0]

  mdc a b | a < b = mdc b a
          | b == 0 = a
          | otherwise = mdc b (mod a b)

  -- meu operador soma b + b-1... ate que b seja igual a n
  a +++ b | (a == b) = a
          | (a > b) = b +++ a
          | otherwise =  b + (a +++ (b-1))

  --a === b | (a < b) = b === a
  --        | (b-a) < 1 = False
  --        | otherwise = True

instance MyInt Integer

--Questão 4 ----------------------------------
arredonda_nota_cima :: Double -> Int
arredonda_nota_cima x = ceiling x

arredonda_nota_baixo :: Double -> Int
arredonda_nota_baixo x = floor x

--Questão 5 ------------------------------------------
--abs retorna valor absoluto

--Questão 6 --------------------------------------
--min retorna o minimo de 2 numeros
--max retorna o maximo entre 2 numneros

--Questão 7 ------------
--O'Haskell oq é?

--Questão 8 ----------
data Dia = Domingo
            | Segunda
            | Terca
            | Quarta
            | Quinta
            | Sexta
            | Sabado
              deriving(Eq, Show)

dia :: Int -> Dia
dia x | (x == 1) = Domingo
      | (x == 2) = Segunda
      | (x == 3) = Terca
      | (x == 4) = Quarta
      | (x == 5) = Quinta
      | (x == 6) = Sexta
      | (x == 7) = Sabado

main = do
  print (bigger (4::Integer) (12::Integer))
  print (smaller (4::Integer) (12::Integer))
