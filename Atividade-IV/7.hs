fib :: Int -> Int
fib n | n == 0 = 0
      | n == 1 = 1
      | otherwise = fib(n-1) + fib(n-2)

main = do
  x <- getLine
  let x1  = (read x :: Int)
  print(fib x1)
