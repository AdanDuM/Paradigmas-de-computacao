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
		print(“Nome: {1} idade {2}”, [self.nome, self.idade])
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
pessoa.imprmi_dados()  		# Chamando métodos
```
Instanciar é a parte simples, em seguida podemos chamar seus métodos colocando um ponto e nome do método.

## Herança (simples e múltipla) e polimorfismo

Foram atendidos mais de 20 alunos, que retornaram a tirar dúvidas.
Poucas dúvidas, e quando existia foram tiradas com o professor e
esclarecida para o aluno.
Notado grande dificuldade na parte de lógica, equação modular, provas e
reticulados.
Antes da primeira prova foi feito um grupo de estudo no horário da noite, tirando dúvidas e preparando alunos para prova.
Ótima experiência para qualquer um.
Agradecimento ao Professor.

Obrigado
