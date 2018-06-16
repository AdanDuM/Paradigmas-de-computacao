vestido(amarelo).
vestido(azul).
vestido(branco).
vestido(verde).
vestido(vermelho).

nome(giovana).
nome(janaina).
nome(luana).
nome(marcia).
nome(simone).

poeta(drumond).
poeta(guimaraes_rosa).
poeta(olavo_bilac).
poeta(mario_de_andrade).
poeta(vinicios_de_moraes).

idade(8).
idade(9).
idade(10).
idade(11).
idade(12).

animal(cachorros).
animal(cavalos).
animal(gatos).
animal(passaros).
animal(tartarugas).

suco(laranja).
suco(limao).
suco(manga).
suco(maracuja).
suco(uva).

%X está à ao lado de Y
aoLado(X,Y,Lista) :- nextto(X,Y,Lista);nextto(Y,X,Lista).
  
%X está à esquerda de Y (em qualquer posição à esquerda)
aEsquerda(X,Y,Lista) :- nth0(IndexX,Lista,X), 
                        nth0(IndexY,Lista,Y), 
                        IndexX < IndexY.
                        
%X está à direita de Y (em qualquer posição à direita)
aDireita(X,Y,Lista) :- aEsquerda(Y,X,Lista). 

% X esta entre Y e Z.
noMeio(X,Y,Z,Lista) :- aEsquerda(X,Z,Lista), aDireita(X,Y,Lista).

%X está no canto se ele é o primeiro ou o último da lista
noCanto(X,Lista) :- last(Lista,X).
noCanto(X,[X|_]).

todosDiferentes([]).
todosDiferentes([H|T]) :- not(member(H,T)), todosDiferentes(T).

primeira(X,[X|_]).

meninaPos(1, X, [X|_]).
meninaPos(P, X, [_|T]) :- P1 is P -1, meninaPos(P1, X, T).


solucao(ListaSolucao) :- 

    ListaSolucao = [
        menina(Vestido1, Nome1, Poeta1, Idade1, Animal1, Suco1),
        menina(Vestido2, Nome2, Poeta2, Idade2, Animal2, Suco2),
        menina(Vestido3, Nome3, Poeta3, Idade3, Animal3, Suco3),
        menina(Vestido4, Nome4, Poeta4, Idade4, Animal4, Suco4),
        menina(Vestido5, Nome5, Poeta5, Idade5, Animal5, Suco5)
    ],

    % % Quem gosta de suco de Maracujá está em uma das pontas.
    noCanto(menina(_, _, _, _, _, maracuja),ListaSolucao),

    % % A menina do vestido Amarelo está em algum lugar à esquerda da menina que gosta de Pássaros.
    aEsquerda(menina(amarelo, _, _, _, _, _), menina(_, _, _, _, passaros, _), ListaSolucao),

    % % A garota mais nova está exatamente à esquerda de quem vai recitar um poema do Drummond.
    (aEsquerda(menina(_, _, _, 8, _, _), menina(_, _, drumond, _, _, _), ListaSolucao),
    aoLado(menina(_, _, _, 8, _, _), menina(_, _, drumond, _, _, _), ListaSolucao)), 
    
    % % Na primeira posição está a menina que recitará um poema do Guimarães Rosa.
    primeira(menina(_, _, guimaraes_rosa, _,_, _), ListaSolucao),

    % % A menina do vestido Verde tem 9 anos.
    member(menina(verde, _, _, 9, _, _), ListaSolucao),

    % % A menina que gosta de suco de Laranja está exatamente à esquerda de quem recitará um poema do Drummond.
    (aEsquerda(menina(_, _, _, _, _, laranja), menina(_, _, drumond, _, _, _), ListaSolucao),
    aoLado(menina(_, _, _, _, _, laranja), menina(_, _, drumond, _, _, _), ListaSolucao)), 

    % % Márcia está em algum lugar à direita da garota do vestido Branco.
    aDireita(menina(_, marcia, _, _, _, _), menina(branco, _, _, _, _, _), ListaSolucao),

    % % A garota que gosta de Gatos está na quarta posição.
    meninaPos(4, menina(_, _, _, _, gatos, _), ListaSolucao),

    % % A menina de Amarelo está em algum lugar entre a que gosta de Cavalos e a Giovanna, nessa ordem.
    noMeio(menina(amarelo, _, _, _, _, _), menina(_, _, _, _, cavalos, _), menina(_, giovana, _, _, _, _), ListaSolucao),
    
    % % A menina que gosta de suco de Uva está exatamente à esquerda da menina do vestido Azul.
    (aEsquerda(menina(_, _, _, _, _, uva), menina(azul, _, _, _, _, _), ListaSolucao),
    aoLado(menina(_, _, _, _, _, uva), menina(azul, _, _, _, _, _), ListaSolucao)), 

    % % A garota do vestido Verde está em algum lugar à esquerda da Simone.
    aEsquerda(menina(verde, _, _, _, _, _), menina(_, simone, _, _, _, _), ListaSolucao),
    
    % % A menina de Amarelo está ao lado da menina que gosta de Tartarugas.
    aoLado(menina(amarelo, _, _, _, _, _), menina(_, _, _, _, tartarugas, _), ListaSolucao),

    % % Na segunda posição está a garota que gosta de suco de Limão.
    meninaPos(2, menina(_, _, _, _,_, limao), ListaSolucao),
    
    % % A garota do vestido Amarelo está em algum lugar à esquerda da que gosta de suco de Uva.
    aEsquerda(menina(amarelo, _, _, _, _, _), menina(_, _, _, _, _, uva), ListaSolucao),

    % % A menina mais velha está em uma das pontas.
    noCanto(menina(_, _, _, 12, _, _), ListaSolucao),

    % % As meninas que gostam de suco de Limão e Manga estão lado a lado.
    aoLado(menina(_, _, _, _, _, limao), menina(_, _, _, _, _, manga), ListaSolucao),

    % % A garota de 11 anos está exatamente à direita da menina de Verde.
    (aDireita(menina(_, _, _, 11, _, _), menina(verde, _, _, _, _, _), ListaSolucao),
    aoLado(menina(_, _, _, 11, _, _), menina(verde, _, _, _, _, _), ListaSolucao)), 

    % % A menina do vestido Vermelho está em algum lugar à esquerda de quem vai recitar um poema do Vinícius de Moraes.
    aEsquerda(menina(vermelho, _, _, _, _, _), menina(_, _, vinicios_de_moraes, _, _, _), ListaSolucao),

    % % A menina que gosta de Gatos está ao lado da menina de 8 anos.
    aoLado(menina(_, _, _, _, gatos, _), menina(_, _, _, 8, _, _), ListaSolucao),

    % % A garota que recitará um poema do Olavo Bilac está em algum lugar à direita da menina de Amarelo.
    aDireita(menina(_, _, olavo_bilac, _, _, _), menina(amarelo, _, _, _, _, _), ListaSolucao),
    
    % % Giovanna está em algum lugar entre quem recitará um poema de Guimarães Rosa e a Janaina, nessa ordem.
    noMeio(menina(_, giovana, _, _, _, _), menina(_, _, guimaraes_rosa, _, _, _), menina(_, janaina, _, _, _, _), ListaSolucao),
    
    % % A garota de 9 anos está em algum lugar entre a garota de 10 anos e a de 11 anos, nessa ordem.
    noMeio(menina(_, _, _, 9, _, _), menina(_, _, _, 10, _, _), menina(_, _, _, 11, _, _), ListaSolucao),
    
    %Testa todas as possibilidades...
    vestido(Vestido1), vestido(Vestido2), vestido(Vestido3), vestido(Vestido4), vestido(Vestido5), 
    todosDiferentes([Vestido1, Vestido2, Vestido3, Vestido4, Vestido5]),
    
    nome(Nome1), nome(Nome2), nome(Nome3), nome(Nome4), nome(Nome5),
    todosDiferentes([Nome1, Nome2, Nome3, Nome4, Nome5]),
    
    poeta(Poeta1), poeta(Poeta2), poeta(Poeta3), poeta(Poeta4), poeta(Poeta5),
    todosDiferentes([Poeta1, Poeta2, Poeta3, Poeta4, Poeta5]),
    
    idade(Idade1), idade(Idade2), idade(Idade3), idade(Idade4), idade(Idade5),
    todosDiferentes([Idade1, Idade2, Idade3, Idade4, Idade5]),
    
    animal(Animal1), animal(Animal2), animal(Animal3), animal(Animal4), animal(Animal5),
    todosDiferentes([Animal1, Animal2, Animal3, Animal4, Animal5]),

    suco(Suco1), suco(Suco2), suco(Suco3), suco(Suco4), suco(Suco5),
    todosDiferentes([Suco1, Suco2, Suco3, Suco4, Suco5]).

/*

Saida:

?- solucao(Lista).
Lista = [
            menina( branco,    luana,    guimaraes_rosa,     12,    cavalos,    manga), 
            menina( amarelo,   marcia,   mario_de_andrade,   10,    cachorros,  limao), 
            menina( vermelho,  giovana,  olavo_bilac,        8,     tartarugas, laranja), 
            menina( verde,     janaina,  drumond,            9,     gatos,      uva), 
            menina( azul,      simone,   vinicios_de_moraes, 11,    passaros,   maracuja)
        ] ;
false.

*/
