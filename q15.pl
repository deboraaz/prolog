:-dynamic objeto/2.

objeto(robo, garagem).
objeto(copo, cozinha).
objeto(contorle, sala).
objeto(tv, sala).

%posicao
pos(O, L) :- objeto(O, L).

%ande (tira o robo do local atual e leva pro prox)
ande(X) :- 
    retract(objeto(robo, Y)),
    asserta(objeto(robo, X)),
    format('Ando da ~w até a ~w ~n',[Y,X]).

%pegue
%robo vai ate onde objeto esta e tira o objeto do BD
pegue(X) :- 
    objeto(X, Y),
    ande(Y),
    retract(objeto(X, _)),
    format('Pega ~w ~n',X).

%solte
solte(X) :-
    objeto(robo, Y),
    asserta(objeto(X, Y)),
    format('Solta ~w ~n',X).

%consultas
% pos(O, L).
%pegue(tv),ande(quarto),solte(tv),ande(cozinha).
