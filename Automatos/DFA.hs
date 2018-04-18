
import qualified Data.Map as M (Map, (!),lookup ,fromList)

type State = String
type Alpha = Char
data Aut = Aut { alpha :: [Alpha],
                 states :: [State],
                 initial :: State,
                 trans :: [(State, Alpha, State)], -- triplas list
                 final :: [State] }
                 deriving(Show)

is_final :: Aut -> State -> Bool
is_final a s = if elem s (final a) then True else False

check :: Aut -> [Alpha] -> State -> [State]
check a [] q = q:[]
--check a (x:xs) q =  q:x
  -- case next q x of
  --                     Just b -> foldl(++) [] (map (check a xs) b)
  --                     Nothing -> []
  --                   where next q x = M.lookup (q,x) (trans a)

accept :: Aut -> [Alpha] -> Bool
accept a xs = is_final a "q0"

ret_1 :: (State, Alpha, State) -> State
ret_1 (x, _, _) = x

ver :: [(State, Alpha, State)] -> State
ver (x:xs) = ret_1 x

autA = Aut {alpha = "01",
             states = ["q0","q1"],
             initial = "q0",
             trans = [("q0",'0', "q0"),
                      ("q0",'1', "q1"),
                      ("q1",'1', "q1"),
                      ("q1",'0', "q0")],
             final = ["q1"] }

testA = accept autA "10101"

main = do

  print (show(trans autA))
