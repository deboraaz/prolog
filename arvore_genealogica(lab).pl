% Árvore genealógica (lab)

genitor_(joana, joao).
genitor_(joao, jose).
genitor_(joao, maria).
genitor_(jose, paulo).
genitor_(maria, pedro).

irm_(X, Y) :- genitor_(G, X), genitor_(G, Y), X @> Y.
    
prim_(X, Y) :- genitor_(M, X), genitor_(N, Y), irm_(M, N).

net_(X, Y) :- genitor_(M, X), genitor_(Y, M).

% recursividade
descendente(Y, X) :- genitor_(X, Y). %base
descendente(Y, X) :- %passo
    genitor_(Z, Y), %simplifica o problema
    descendente(Z, X). %obtem solução da instancia menor


%Consultas
% irm_(X, Y)
% prim_(X< Y)
% net_X, Y)%

