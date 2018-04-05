soma :: [Int] -> Int
soma [] = 0
soma (x:xs) = soma(xs) + 1

getLista :: Int -> [Int]
getLista 1 = [1,2,3,4,5]

main = do
  print(soma(getLista 1))
