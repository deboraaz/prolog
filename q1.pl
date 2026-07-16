pai(ivo, eva).
pai(gil, rai).
pai(gil, clo).
pai(gil, ary).
pai(rai, noe).
pai(ary, gal).

mae(ana, eva).
mae(bia, rai).
mae(bia, clo).
mae(bia, ary).
mae(eva, noe).
mae(lia, gal).

homem(ivo).
homem(gil).
homem(rai).
homem(ary).
homem(noe).

mulher(ana).
mulher(bia).
mulher(eva).
mulher(clo).
mulher(lia).
mulher(gal).

gerou(X, Y) :- pai(X, Y); mae(X, Y).


% filho/filha
filh_(X, Y, Z) :- pai(Y, X), mae(Z, X).

%irmao
irm_(X, Y) :- filh_(X, M, N), filh_(Y, M, N).

%tio/tia
ti_(T, X) :- filh_(X, Y, Z), (irm_(T, Y); irm_(T, Z)).

%primo/prima
prim_(X, Y) :- filh_(X, P1, M1), filh_(Y, P2, M2), (irm_(P1, P2); irm_(P1, M2); irm_(M1, P2); irm_(M1, M2)), X \= Y.

%avo
avo(Z, X) :- (filh_(X, Y, _); filh_(X, _, Y)), (filh_(Y, Z, _); filh_(Y, _, Z)).

%consultas
% filh_(gal, X, Y).
% avo(X, noe).
%prim_(noe, gal).
% prim_(noe, X).
% avo(bia, X).
