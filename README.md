# Tutorial para iniciantes em Python OO.
### Atividade 2 de paradigmas

## Introdução.

Atividade com finalidade de apresentar o básico da linguagem Python.

### Noções básicas.

É necessário entender que a indentação no código Python tem forte importância,
um bom exemplo seria com a condição **if**.

```
if (condicao):
print("Hellow Word")
```
O código acima verifica a condição do **if** e em seguida, executa o **print**, independente
do **if**, em resumo, o **print** não faz parte do corpo do **if**.
```
if (condicao):
  print("Hellow Word")
```
O código acima verifica a condição e executa o print somente se a condição for verdadeira.
Então temos que tomar cuidado com a identação, para nao executa o código de forma indevida.

## Classes

Classes são abstrações do mundo real para ser usada em forma de código em um determinado programa para executar determinada tarefa. Se a teoria de uma classe já é bem fundamentada em outra linguagem, em python continuará sendo fácil ou até mesmo mais fácil ainda.

Para criarmos uma classe usamos a palavra chave class seguida do nome da classe, segue um ex abaixo
```
class Pessoa(object):
```
Podemos minimizar o código, quando a classe só tem “object” dentro de seus parentes, podemos minimizar da seguinte forma.
```
class Pessoa:
```
Atributos
Os atributos podem ser colocados no corpo da classe, ou até mesmo dentro de um método e/ou construtor. Acompanhe o exemplo abaixo.
```
class Pessoa:

nome     # atributo da classe
idade    # atributo da classe
```
## Construtor e Métodos

Construtor é responsável por criar o objeto quando instanciado, o construtor recebe os parâmetros, caso exista, processa da forma desejada.
```
class Pessoa:

  def __init__ (self, nome, idade):
		self.nome = nome
		self.idade = idade
```
O construtor é interpretado pela chamada de método def seguida pela chamada __init__, dentro dos parentes temos os parâmetros nome e idade. O parâmetro self, refere-se a instância da própria classe e quando escrevemos self.nome estamos declarando um objeto nome dentro da classe sem precisar representar a variável em outro lugar.
```
class Pessoa:

  def __init__ (self, nome, idade):
    self.nome = nome
		self.idade = idade

    def imprimi_dados(self):
		  print(“Nome: {1} idade {2}”.format(self.nome, self.idade))
```
Como bem sabemos, o def declara um método que nesse caso imprime os dados, self faz referência ao próprio objeto sendo possível imprimir os dados na ordem.

## Instanciando a classe
Temos a classe pronta, então precisamos usá-la, mas como podemos instanciar essa classe no código. segue o exemplo abaixo.
```
class Pessoa:

  def __init__ (self, nome, idade):
		self.nome = nome
		self.idade = idade

  def imprimi_dados(self):
    print(“Nome: {1} idade {2}”, [self.nome, self.idade])

pessoa = Pessoa() 			# instanciando a classe
pessoa.imprmir_dados()  	# Chamando métodos
```
Instanciar é a parte simples, em seguida podemos chamar seus métodos colocando um ponto e nome do método.

## Herança (simples e múltipla) e polimorfismo

Para definir que a super classe em uma classe.

```
class Pessoa:
  atributo1

class Aluno(Pessoa):
  atributo2
```
Dessa forma entendemos que Pessoa é super classe de aluno e que alem de aluno possuir o atributo2,
ele tambem possui o atributo1 da sua super classe.
Quando apresentamos mais de uma super classe temos o que chamamos de herança multipla.

## Métodos abstratos e estáticos.

Metodos abstratos devem ser declarados com a anotação **@abstractmethod**, a classe que herdar
uma super classe que tem metodos abstratos, deve sobreescrever o/os metodo/s.

```
class Pessoa:

  @abstractmethod
  def faz_algo(self):
```

## Atividades

[A-Pneu] (http://br.spoj.com/problems/JPNEU/)
[B1-Busca] (http://olimpiada.ic.unicamp.br/pratique/programacao/nivelj/2012f1pj_busca)
[B2-Quadrado] (http://br.spoj.com/problems/QUADRAD2/)
[C-Papel] (http://olimpiada.ic.unicamp.br/pratique/programacao/nivelj/2009f1pj_papel)
[E-Tenis] (http://olimpiada.ic.unicamp.br/pratique/programacao/nivelj/2012f2pj_tenis)
[D-Overflow] (http://olimpiada.ic.unicamp.br/pratique/programacao/nivelj/2009f1pj_overflow)
[G-Garçom] (http://olimpiada.ic.unicamp.br/pratique/programacao/nivelj/2010f1pj_garcom)
[F-Maior] (http://olimpiada.ic.unicamp.br/pratique/programacao/nivelj/2012f1pj_maior)
[I-Sedex] (http://olimpiada.ic.unicamp.br/pratique/programacao/nivelj/2010f1pj_sedex)
[H-Tacografo] (http://olimpiada.ic.unicamp.br/pratique/programacao/nivelj/2010f2pj_tacografo)
[J-Campeonato] (http://olimpiada.ic.unicamp.br/pratique/programacao/nivelj/2012f1pj_campeonato)
[K-Envelopes] (http://olimpiada.ic.unicamp.br/pratique/programacao/nivelj/2009f1pj_envelopes1)
[L-Bolo] (http://olimpiada.ic.unicamp.br/pratique/programacao/nivelj/2012f2pj_bolo)
[M-Transporte] (http://olimpiada.ic.unicamp.br/pratique/programacao/nivelj/2011f1pj_transporte)
[N-Maratona] (http://olimpiada.ic.unicamp.br/pratique/programacao/nivelj/2009f2pj_maratona)
[P-Chocolate] (http://olimpiada.ic.unicamp.br/pratique/programacao/nivelj/2012f2pj_chocolate)
[O-Campo Minado] (http://olimpiada.ic.unicamp.br/pratique/programacao/nivelj/2011f1pj_campominado)
[Q-Vestib] (http://olimpiada.ic.unicamp.br/pratique/programacao/nivelj/2008f1pj_vestib)
[R-Corrida] (http://olimpiada.ic.unicamp.br/pratique/programacao/nivelj/2011f1pj_corrida)
[S-Chuva] (http://olimpiada.ic.unicamp.br/pratique/programacao/nivelj/2011f2pj_chuva)
[T-Escada] (http://olimpiada.ic.unicamp.br/pratique/programacao/nivelj/2010f2pj_escada)
