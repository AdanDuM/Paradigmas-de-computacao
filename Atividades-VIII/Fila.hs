module Queue where

  data Queue t = Queue [t]
              deriving (Eq,Show)

  enqueue :: Queue t -> t -> Queue t
  enqueue (Queue q) x = Queue (x:q)
