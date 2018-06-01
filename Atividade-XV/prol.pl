:- initialization(main).

main :- write('Informe um numero'),
    read(X),
    writeln(X),
    Y is sqrt(X),
    writeln(Y),
    halt.
    
    
gerou(carlos, maria).
gerou(ana, maria).
gerou(ana, gabriel).
gerou(gui, marcos).

homen(gabriel).
feminino(maria).

feio(edison).


