-- verifica se elemento pertence a lista
pertence :: [Int] -> Int -> Bool
pertence [] _ = False
pertence (x:xs)  n| (n == x) = True
				  | otherwise = pertence xs n

-- retorna maior elemento da lista
maior :: [Int] -> Int
maior [x] = x
maior (x:xs) | (x > maior xs) = x
			 | otherwise = maior xs

-- verifica se todos os elementos da lista são pares
ver_par :: [Int] -> Bool
ver_par [] = False
ver_par [x] | (mod x 2 == 0) = True
ver_par (x:xs) | (mod x 2 == 1) = False 
			   | otherwise = ver_par xs