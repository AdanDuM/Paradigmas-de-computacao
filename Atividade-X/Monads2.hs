data Expr = Val Int
          | Div Expr Expr

eval :: Expr -> Maybe Int
eval (Val n) = Just n
eval (Div x y) = case eval x of
  Nothing -> Nothing
  Just m -> case eval y of
    Nothing -> Nothing
    Just n -> my_div m n

my_div :: Int -> Int -> Maybe Int
my_div x y | y == 0 = Nothing
           | otherwise = Just (x `div` y)

eval_final :: Expr -> Maybe Int
eval_final (Val n) = return n
eval_final (Div x y) = do
  a <- eval_final x
  b <- eval_final y
  my_div a b
