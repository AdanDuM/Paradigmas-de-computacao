divisivel(N,K) :-
    M is mod(N,K),
    M == 0.

/*
?- divisivel(2,2).
true.

?- divisivel(5,2).
false.
*/

triangulo(X, Y, Z) :-
    X < Y + Z,
    Y < X + Z,
    Z < X + Y,
    X > abs(Y - Z),
    Y > abs(X - Z),
    Z > abs(X - Y).

/*
?- triangulo(2,55,4).
false.

?- triangulo(2,3,4).
true.
*/

eqSegundoGrau(A,B,C,ValorX) :- eqSegundoGrauP(A,B,C,ValorX); eqSegundoGrauN(A,B,C,ValorX).

eqSegundoGrauP(A,B,C,ValorX) :- ValorX is ((- B) + sqrt(B * B - 4 * A * C)) / (2 * A).
eqSegundoGrauN(A,B,C,ValorX) :- ValorX is ((- B) - sqrt(B * B - 4 * A * C)) / (2 * A).

/*
?- eqSegundoGrau(1,1,-2,X).
X = 1.0 ;
X = -2.0.
*/

potencia(_, 0, 1).
potencia(X, Y, Ret) :- Y1 is Y-1, potencia(X, Y1, Ret1), Ret is X * Ret1.

/*
?- potencia(2,3,X).
X = 8
*/

absoluto(N,N) :- N > 0.
absoluto(N, Ret) :- N < 0 , Ret is -N.

/*
?- absoluto(-2,X).
X = 2.

?- absoluto(2,X).
X = 2

*/

areaTriangulo(B, A, Area) :- Area is ((B * A)/2).

/*
?- areaTriangulo(2,3,X).
X = 3.

*/

xor(X,Y) :- (X ; Y) , not((X , Y)).

/*
?- xor(false, false).
false.

?- xor(false, true).
true.

?- xor(true, true).
false.

*/
aprovado(A,B,C) :- M is (A + B + C)/3, M >= 6.

/*
?- aprovado(2,2,2).
false.

?- aprovado(2,2,10).
false.

?- aprovado(2,10,10).
true.
*/

fib(0, 1).
fib(1, 1).
fib(N, K) :- N1 is (N - 1), N2 is (N - 2), fib(N1, K1), fib(N2, K2), K is K1 + K2.

/*
?- fib(1,X).
X = 1 .

?- fib(0,X).
X = 1 .

?- fib(2,X).
X = 2 .

?- fib(3,X).
X = 3 .

?- fib(4,X).
X = 5 .

?- fib(7,X).
X = 21 .
*/

 distancia3D(ponto(X1,Y1,Z1),ponto(X2,Y2,Z2), Dist) :- Dist is sqrt((X1 - X2) * (X1 - X2) + (Y1 - Y2) * (Y1 - Y2) + (Z1 - Z2) * (Z1 - Z2)).

 /*
 ?- distancia3D(ponto(2,2,2), ponto(3,3,3),Dist).
Dist = 1.7320508075688772.

?- distancia3D(ponto(2,2,2), ponto(10,3,10),Dist).
Dist = 11.357816691600547.

?- distancia3D(ponto(5,2,2), ponto(10,3,10),Dist).
Dist = 9.486832980505138.

*/

maior(A, B, C, A) :- A >= B , A >= C, !.
maior(A, B, C, B) :- B >= A , B >= C, !.
maior(A, B, C, C) :- C >= B , C >= A, !.

/*
?- maior(2,2,2, X).
X = 2.

?- maior(2,2,4, X).
X = 4.

?- maior(2,6,4, X).
X = 6.

?- maior(10,6,4, X).
X = 10.
*/

operacao(+, X, Y, Result) :- Result is X + Y.
operacao(-, X, Y, Result) :- Result is X - Y.
operacao(*, X, Y, Result) :- Result is X * Y.
operacao(/, X, Y, Result) :- Result is X / Y.
