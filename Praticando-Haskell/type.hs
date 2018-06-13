type Nome = String
type Idade = Int
type Linguagem = String
type Pessoa = (Nome, Idade, Linguagem)

pessoa :: Pessoa
pessoa = ("Edison", 24, "Haskell")

my_fst :: Pessoa -> Nome -- pra deixar mais claro a parte inferior
my_fst (x, y, z) = x -- diz oq retorna na funçao