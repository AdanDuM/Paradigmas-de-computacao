# Atividade III

- 1. Escreva expressões lambda para as funcões abaixo:
###
A = f(x) = x² + 4
###
B = f(a, b) = a + b
###
C = f(x) = x-²
###
D = f(x) = x ∗ x-¹
###
###
- 2. Aplique α-convers˜ao, quando poss´ıvel, e mostre se as express˜oes abaixo s˜ao α-equivalentes. Identifique
as vari´aveis dependentes (ou vinculadas) e livres de cada express˜ao. Diga tamb´em quais das express˜oes
abaixo s˜ao combinadores.
###
A xy == yx
###
B λx.x(λy.xy) == λz.z(λx.zx)
###
C ((λx.x(λy.xyzy)x)xy) == ((λy.y(λz.yzwz)y)yx)
###
###
- 3. Efetue a substitui¸c˜ao abaixo:
(x(λy.xy))[x → yz]
###
###
- 4. Calcule as express˜oes lambda:
###
A λx.(λy.y 2 − (λz.(z + x)4)3)2
###
B λx.x + (λy.y 2(b))(a)
###
C λx.(λy.(x + (λx.8) − y)6)5
###
D λxy.x + y(3)(7)
###
###
- 5. Reduza as express˜oes lambda para sua forma normal, quando poss´ıvel:
###
A (λx. + x1)2
###
B (λx.xx)(λx.xx)
###
C λx.x(xy)(λu.u)
###
D λy.(λx.y ∗ y + x)(z)
###
E λx.(λy.(yx)λi.i)λp.λq.p
###
F λx.x(λy.(λx.xy)x)
###
G (λx.xx)(λy.y)
###
###
- 6. Utilize nossas constru¸c˜oes da l´ogica Booleana para efetuar redu¸c˜oes nas express˜oes abaixo. Para iniciar,
substitua os nomes pela respectiva express˜ao lambda. Por exemplo, substitua and por (λa.(λb.(a b F ALSE))),
FALSE por (λx.λy.y), TRUE por (λx.λy.x), e assim por diante. As express˜oes lambda correspondentes
encontram-se nos slides do Moodle da disciplina. Escreva suas conclus˜oes.
###
A and TRUE TRUE
###
B and TRUE FALSE
###
C and FALSE FALSE
###
D and FALSE TRUE
###
E not TRUE
###
F not FALSE
###
G or TRUE TRUE
###
H or TRUE FALSE
###
I or FALSE TRUE
###
J or FALSE FALSE
###
K if TRUE a b
###
L if FALSE a b
###
###
- 7. Pesquise sobre a Codifica¸c˜ao de Church para incorporar operadores aritm´eticos e n´umeros no c´alculoλ.
Veja tamb´em como calcular o sucessor e predecessor de um n´umero. Escreva algumas anota¸c˜oes e
exemplos sobre este t´opico, por exemplo, tente encontrar o sucessor de 0, 1 e 2. Tamb´em tente somar 0
+ 1 e 1 + 2. Escreva os n´umeros de 1 at´e 10 utilizando a codifica¸c˜ao de Church. Fa¸ca 1 - 0 e 2 - 1.
###
###
- 8. Pesquise sobre o Combinador Y. O que ´e? O que ele faz? Descreva um pouco seu funcionamento.
###
Utilize express˜oes Lambda em Python para resolver os seguintes problemas:
###
- 1. Crie uma express˜ao Lambda que receba dois valores booleanos (x, y) retorne o resultado do “ou exclusivo”
(XOR) sobre eles. Leia os valores x e y do teclado.
###
- 2. Crie uma express˜ao Lambda que receba trˆes notas de um aluno (a, b, c), calcule a m´edia e retorne se o
aluno foi aprovado ou reprovado. Para um aluno ser aprovado, ele deve possuir nota igual ou superior a 6. Leia as notas dos alunos do teclado.
###
- 3. Crie uma express˜ao Lambda que compute o n-´esimo n´umero de Fibonacci. Leia n do teclado.
###
- 4. Crie uma express˜ao Lambda que resolva uma equa¸c˜ao de segundo grau da forma ax2 +bx + c utilizando
a f´ormula de Bhaskara. Leia os coeficientes a, b e c do teclado.
###
- 5. Crie uma express˜ao Lambda que dados dois pontos no espa¸co 3D, (x1, y1, z1) e (x2, y2, z2), compute a
distˆancia entre eles. Leia as posi¸c˜oes dos pontos do teclado.
###
- 6. Crie uma express˜ao Lambda que receba 3 valores num´ericos (a, b, c) e retorne o maior deles. N˜ao utilize
nenhuma forma de ordena¸c˜ao. Leia os valores a, b, c do teclado.
###
- 7. Utilize a fun¸c˜ao map que receba como parˆametros uma sequˆencia num´erica e uma fun¸c˜ao lambda. A
fun¸c˜ao lambda deve retornar par ou ´ımpar para cada n´umero.
