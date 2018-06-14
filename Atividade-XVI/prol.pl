posicao(X, [X|_], 0).
posicao(X, [_|T], P) :- posicao(X, T, P1), P is P1 + 1.  

/*
?- posicao(2, [1,2,3,4], P).
P = 1 .

?- posicao(3, [1,2,3,4], P).
P = 2 .

?- posicao(4, [1,2,3,4], P).
P = 3 .
*/

inserirElementoPosicao(X,_,[],[X]).
inserirElementoPosicao(X, 0, L1, [X|L1]).
inserirElementoPosicao(X, P, [H|T], [H|L2]) :- P1 is P - 1, inserirElementoPosicao(X, P1, T, L2).

/*

?- iserirElementoPosicao(2,1,[1,3,4,5], L1).
L1 = [1, 2, 3, 4, 5] .

?- iserirElementoPosicao(2,9,[1,3,4,5], L1).
Correct to: "inserirElementoPosicao(2,9,[1,3,4,5],L1)"?
L1 = [1, 3, 4, 5, 2]
*/

numToWord(0,zero).
numToWord(1,um).
numToWord(2,dois).
numToWord(3,tres).
numToWord(4,quatro).
numToWord(5,cinco).
numToWord(6,seis).
numToWord(7,sete).
numToWord(8,oito).
numToWord(9,nove).

numerosParaPalavras([],[]).
numerosParaPalavras([H|T],[Pa|T2]) :- numToWord(H, Pa), numerosParaPalavras(T, T2).

/*
?- numeroParaPalavras([0], L1).
L1 = [zero].

?- numeroParaPalavras([0,2,1,3,4,5,3,2], L1).
L1 = [zero, dois, um, tres, quatro, cinco, tres, dois].
*/

soma([], 0).
soma([H|T], Ret) :- soma(T, Ret1) ,Ret is H + Ret1.

/*
?- soma([1,2,3,4,5,6], Ret).
Ret = 21.

?- soma([1,2,3,4,5,6,1], Ret).
Ret = 22.
*/

media([],0).
media([H|T],X) :- mediar([H|T],S,C), X is S/C.

mediar([], 0, 0).
mediar([H|T],S,C) :- mediar(T,ST,CT), S is H + ST, C is 1 + CT.
%%%

menor([X], X).
menor([H|T],H) :- menor(T, MT), H < MT.
menor([H|T],MT) :- menor(T, MT), H >= MT.
%%%%

palindrome([]).
palindrome([_]).
palindrome([H1,H2|T]) :- igualUltimo(H1,[H2|T]), removeUltimo([H2|T],L), palindrome(L).

igualUltimo(X, [X]).
igualUltimo(X, [_,H2|T]) :- igualUltimo(X,[H2|T]).

removeUltimo([_], []).
removeUltimo([],[]).
removeUltimo([H1,H2|T], [H1|L]) :- removeUltimo([H2|T],L).
%%%%

diferencaMaiorMenor([],0).
diferencaMaiorMenor(L,X) :- maiorElemento(L,Maior), menorElemento(L,Menor), X is Maior - Menor.

maiorElemento([X], X).
maiorElemento([H|T],H) :- maiorElemento(T, MT), H >= MT.
maiorElemento([H|T],MT) :- maiorElemento(T, MT), H < MT.

menorElemento([X], X).
menorElemento([H|T],H) :- menorElemento(T, MT), H < MT.
menorElemento([H|T],MT) :- menorElemento(T, MT), H >= MT.

%%

ocorrencias([],_,0).
ocorrencias([X|T],X,N) :- ocorrencias(T,X,N2), N is N2 + 1.
ocorrencias([H|T],X,N) :- ocorrencias(T,X,N), H \== T.

%%

inverte([],[]).
inverte([H|T], L) :- inverte(T,L2), insereNoFim(H, L2, L).

insereNoFim(X, [], [X]).
insereNoFim(X, [H|T], [H|L]) :- insereNoFim(X, T, L).

%%

primeiros(0,[_|_],[]) :- !.
primeiros(_,[],[]) :- !.
primeiros(N,[H|T],[H|L]) :- N > 0, N2 is N - 1, primeiros(N2, T, L).

%%

apagar(_, [], []).
apagar(X, [X|T], L) :- apagar(X,T,L).
apagar(X, [H|T], [H|L]) :- X \== H, apagar(X,T,L).

%%

dividir([], [], []).
dividir([X], [X], []).
dividir([H1,H2|T], [H1|L1], [H2|L2]) :- dividir(T,L1,L2).

%%

uniao([],L2,L2).
uniao([H|T],L1,L) :- uniao(T,L1,L2), insereSemRepetir(H,L2,L).

insereSemRepetir(X,[],[X]).
insereSemRepetir(X,[H|T],[H|L]) :- X \== H, insereSemRepetir(X,T,L).
insereSemRepetir(X,[X|T],[X|T]).

%%

diferenca(S1,[],S1) :- !.
diferenca([],_,[]) :- !.
diferenca(S1,[H,H1|T],S3) :- diferenca(S1,[H1|T],S4), diferenca(S4,[H],S3).
diferenca([X|T],[X],S3) :- diferenca(T,[X],S3).
diferenca([H|T],[X],[H|S3]) :- X \== H, diferenca(T,[X],S3).

%%

uniao(S1,S2,S3,S4) :- uniao2(S1,S2,SA), uniao2(SA,S3,S4).

uniao2([],L2,L2).
uniao2([H|T],L1,L) :- uniao2(T,L1,L2), insereSemRepetir(H,L2,L).

insereSemRepetir(X,[],[X]).
insereSemRepetir(X,[H|T],[H|L]) :- X \== H, insereSemRepetir(X,T,L).
insereSemRepetir(X,[X|T],[X|T]).

diferenca(S1,S2,S3,S4) :- diferenca2(S1,S2,SA), diferenca2(SA,S3,S4).

diferenca2(S1,[],S1) :- !.
diferenca2([],_,[]) :- !.
diferenca2(S1,[H,H1|T],S3) :- diferenca2(S1,[H1|T],S4), diferenca2(S4,[H],S3).
diferenca2([X|T],[X],S3) :- diferenca2(T,[X],S3).
diferenca2([H|T],[X],[H|S3]) :- X \== H, diferenca2(T,[X],S3).

