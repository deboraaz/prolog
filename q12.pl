
% caso base
anexa([], L2, L2).
anexa([X|A], B, [X|C]) :- anexa(A, B, C).

%consulta
%anexa([a,b],[c,d],L).