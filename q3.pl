% país(Nome, Área, População)
pais(brasil, 9, 130).
pais(china, 12, 1800).
pais(eua, 9, 230).
pais(índia, 3, 450).

%densidade eh populacao dividido pela area
densidade(P,D) :- pais(P, A, O), D is O/A.

mais_populoso(X, Y) :- pais(X, _, A), pais(Y, _, B), A>B.
