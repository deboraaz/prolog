pessoa(ana, f, 23, 1.55, 56.0).
pessoa(bia, f, 19, 1.71, 61.3).
pessoa(ivo, m, 22, 1.80, 70.5).
pessoa(lia, f, 17, 1.85, 57.3).
pessoa(eva, f, 28, 1.75, 68.7).
pessoa(ary, m, 25, 1.72, 68.9).

sexo(X, Z) :- pessoa(X, Y, _, _, _), Y ==Z.

idade_maior_Z(X, Z) :- pessoa(X, _, Y, _, _), Y>Z.



%consulta
