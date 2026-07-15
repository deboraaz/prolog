% questao 10

% ultimo(L, U) :- [X], U is L.
ultimo([X], X). %caso base
ultimo([_| LNova], U) :-
    ultimo(LNova, U).

%consulta
%ultimo([a,b,c],U).