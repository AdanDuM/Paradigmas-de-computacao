class (Integral x) => MyInt x where
  bigger :: x -> x -> x
  smaller :: x -> x -> x
  par :: x -> Bool
  impar :: x -> Bool
  primo :: x -> Bool
  divisores :: x -> [x] -- meu metodo
  mdc :: x -> x -> x
  (===) :: x -> x -> Bool

  bigger a b | a > b = a
             | otherwise = b

  smaller a b | a < b = a
              | otherwise = b

  par a | (mod 2 a) == 0 = True
        | otherwise = False

  impar a | (mod 2 a) == 0 = False
          | otherwise = True

  primo a = divisores a == [1,a]

  divisores n = [a | a <- [1..n], n`mod`a == 0]

  mdc a b | a < b = mdc b a
          | b == 0 = a
          | otherwise = mdc b (mod a b)

  a === b | (a < b) = b === a
          | (b-a) < 1 = False
          | otherwise = True

instance MyInt Integer

main = do
  print (bigger (4::Integer) (12::Integer))
  print (smaller (4::Integer) (12::Integer))
