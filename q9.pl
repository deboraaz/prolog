% questao 9
% 
% as estradas tem o sentido unico (a pode ir pra d mas d nao pode ir pra a)
% 
%estrada(origem, destino, km)
% a
estrada(a, b, 25).
estrada(a, d, 23).
estrada(b, e, 32).
estrada(b, c, 19).
estrada(c, d, 14).
estrada(c, f, 28).
estrada(d, f, 30).
estrada(e, f, 26).

% b
%vamos construir uma logica recursiva,
%se os caminhos n estao conectados, ele ve um intermediario e vai somando

%caso base
dist(A, B, D) :- estrada(A, B, D).
dist(A, B, D) :- 
    estrada(A, X, DNova),
    dist(X, B, DResto),
    D is DNova + DResto.

rota(A, B, [A, B]) :- estrada(A, B, _).
rota(A, B, [A|R]) :- 
    estrada(A, X, _),
    rota(X, B, R).

%consultas
% dist(a, b, D).
% dist(a, c, D).
% rota(a, b, R).
% rota(a, f, R).

