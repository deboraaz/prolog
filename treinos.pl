%treinando parte de listas - exercicios 10, 11, 12, 13

%10
%base
% ultimo([X], X).
% ultimo([H|T], U) :- ultimo(T, U).

%consulta
%ultimo([a,b,c],U).

%11
% max([X], X).

% recursao head maior
% max([H | T], M) :- 
%     max(T, MCauda),
%     H > MCauda,
%     M is H.

% % recursao cauda maior
% max([H | T], M) :- 
%     max(T, MCauda),
%     H < MCauda,
%     M is MCauda.

%12

% %base
% anexa([], B, B).
% %recursao
% anexa([H | T], B, [H | L]) :- anexa(T, B, L).

% %consulta
% % anexa([a,b], [c,d], L).

%13

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