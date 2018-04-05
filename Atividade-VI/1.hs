type Nome = String
type Diciplina = String
type Nota = Float
type Aluno = (Nome, Diciplina, Nota, Nota, Nota)

aluno :: Int -> Aluno
aluno 0 = ("bob", "Org", 10, 10, 9)
aluno 1 = ("gui", "Org", 1, 10, 10)
aluno 2 = ("gui", "Org", 1, 10, 10)
aluno 3 = ("gui", "Org", 1, 10, 10)

getMedia:: Aluno -> Float
getMedia (_, _, x, y, z) = (x+y+z)/3

media :: Int -> Float
media x = (getMedia (aluno x))

getNome :: Aluno -> String
getNome (n, _, _, _, _) = n

getSomaAlunos :: Int -> Float
getSomaAlunos x | x==0 = media x
                | otherwise = (media x) + (getSomaAlunos (x-1))

getMediaAlunos :: Int -> Float
getMediaAlunos x = (getSomaAlunos x)/ (fromIntegral (x+1))

main = do
  print(getMediaAlunos 3)
