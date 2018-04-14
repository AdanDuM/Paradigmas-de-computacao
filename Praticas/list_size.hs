-- retorna o tamanhanho do vetor
list_size [] = 0
list_size (x:xs) = 1 + list_size xs
--x representa a cabeça da lista, xs a calda