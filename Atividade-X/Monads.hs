data Option a = Some a
              | None
              deriving (Eq, Ord, Read, Show)

class Monad m where -- nao precisa ser monad, é uma classe feioo
  (>>=) :: m a -> (a -> m b) -> m b
  return :: a -> m a

instance Qualquer Option where --pq Main ???? applicative functor
  None >>= f = None
  (Some a) >>= f = f a
  return a = Some a

soma1 :: Int -> Option Int
soma1 n = Some (n+1)

somaNada :: Int -> Option Int
somaNada _ = None

main :: IO ()
main = do
  print( show(soma1 1))
