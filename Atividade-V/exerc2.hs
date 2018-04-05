media :: [Int] -> Int -> Int
media [] c = c
media (x:xs) c = media(xs (c+1))

getLista :: Int -> [Int]
getLista 1 = [1,2]

main = do
  print(media(getLista 1) 0)
