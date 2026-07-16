anexa([], B, B).
anexa([H | T], B, [H | L]) :- anexa(T, B, L).

%base
inv([X], [X]).
%recursao
inv([H | T], L) :- 
    inv(T, Lnova),
    anexa(Lnova, [H], L).

%consulta
% inv([c,b,a],L).