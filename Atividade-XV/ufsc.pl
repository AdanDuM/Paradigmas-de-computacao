estuda(carlos, ine3333).
estuda(roberto, ine1111).
estuda(jean, ine1111).
estuda(manuela, ine2222).
estuda(camila, ine2222).
estuda(sophia, ine3333).
estuda(pablito, ine1111).
estuda(guisinho, ine3333).

leciona(anderson, ine1111).
leciona(fabio, ine2222).
leciona(felipe, ine3333).

ensina(X, Y) :-
    leciona(X, M), estuda(Y, M).

colegas(X, Y) :-
    estuda(X, M), estuda(Y, M).

% consultas
% leciona(anderson, Materia).
% leciona(anderson, Materia), estuda(Aluno, Materia).
% colegas(anderson, Colega).
% colegas(anderson, manuela).

    
    
