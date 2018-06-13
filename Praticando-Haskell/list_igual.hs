list_igual :: [Int] -> [Int] -> Bool
list_igual [] [] = True
list_igual [] _ = False
list_igual _ [] = False
list_igual (x:xs) (y:ys) | (x == y) = list_igual xs ys
						 | otherwise = False