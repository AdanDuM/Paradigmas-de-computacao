data Expr = Val Int
          | Div Expr Expr
          | Mul Expr Expr
          | Add Expr Expr
          | Sub Expr Expr

my_div :: Int -> Int -> Maybe Int
my_div x y | y == 0 = Nothing
        | otherwise = Just (x `div` y)

my_mul :: Int -> Int -> Maybe Int
my_mul x y = Just (x * y)

my_add :: Int -> Int -> Maybe Int
my_add x y = Just (x + y)

my_sub :: Int -> Int -> Maybe Int
my_sub x y = Just (x - y)

--Primeira Forma ------------------------------------
eval :: Expr -> Maybe Int
eval (Val n) = Just n
eval (Div x y) = case eval x of
  Nothing -> Nothing
  Just m -> case eval y of
    Nothing -> Nothing
    Just n -> my_div m n
eval (Mul x y) = case eval x of
  Nothing -> Nothing
  Just m -> case eval y of
    Nothing -> Nothing
    Just n -> my_mul m n
eval (Add x y) = case eval x of
  Nothing -> Nothing
  Just m -> case eval y of
    Nothing -> Nothing
    Just n -> my_add m n
eval (Sub x y) = case eval x of
  Nothing -> Nothing
  Just m -> case eval y of
    Nothing -> Nothing
    Just n -> my_sub m n

--Segunda Forma-----------------------------------
eval_monad :: Expr -> Maybe Int
eval_monad (Val n) = return n
eval_monad (Div x y) = eval_monad x >>=
                          (\n -> eval_monad y >>=
                            \m -> (my_div n m))
eval_monad (Mul x y) = eval_monad x >>=
                          (\n -> eval_monad y >>=
                            \m -> (my_mul n m))
eval_monad (Add x y) = eval_monad x >>=
                          (\n -> eval_monad y >>=
                            \m -> (my_add n m))
eval_monad (Sub x y) = eval_monad x >>=
                          (\n -> eval_monad y >>=
                            \m -> (my_sub n m))

--Terceira forma------------------------------------
eval_final :: Expr -> Maybe Int
eval_final (Val n) = return n
eval_final (Div x y) = do
  a <- eval_final x
  b <- eval_final y
  my_div a b
eval_final (Mul x y) = do
  a <- eval_final x
  b <- eval_final y
  my_mul a b
eval_final (Add x y) = do
  a <- eval_final x
  b <- eval_final y
  my_add a b
eval_final (Sub x y) = do
  a <- eval_final x
  b <- eval_final y
  my_sub a b

-- a forma mais facil foi a ultima e a mais dificil foi a segunda pela forma de escrita mais abstrata
