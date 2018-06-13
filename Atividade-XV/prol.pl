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