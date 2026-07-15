% a minha ideia eh andar recursivamente na lista, armazenar o maior e ir comparando

% se so tiver um elemento, ele eh o maior
max([X], X).

%para head
max([H | T], M) :-
    max(T, MaiorCauda), %descobre maior do resto
    H > MaiorCauda,
    M = H.

%para cauda
max([H | T], M) :-
    max(T, MaiorCauda),
    H < MaiorCauda,
    M = MaiorCauda.
    

%consulta
% max([4,9,1],M). 