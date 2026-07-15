% questao 7

%calcular a multiplicacao entre dois numeros
%recursivamente

multiplica(X, 1, Z) :- Z is X, !. %caso base
multiplica(X, Y, Z):-
    NovoY is Y-1,
	multiplica(X, NovoY, ZParcial),
	Z is ZParcial + X.