% corte (lab)

pessoa(mia).

tipo_de_animal(cachorro).
tipo_de_animal(gato).
tipo_de_animal(tigre).
tipo_de_animal(X) :- tipo_peconhento(X).

tipo_peconhento(cobra).
tipo_peconhento(aranha).
tipo_peconhento(escorpiao).

gostaDe(X, Y) :- pessoa(X), tipo_de_animal(Y), condicao(Y).

%ele quebra se for verdade
condicao(Y) :- tipo_peconhento(Y), !, false.
%se passar da condicao anterior entao é verdade
condicao(_).

gostaDe2(X, Y) :- pessoa(X), tipo_de_animal(Y), tipo_peconhento(Y), !, false.

 
/** <examples>
?- gostaDe(mia, tigre).
?- gostaDe(mia, cobra).
?- gostaDe(mia, chocolate).
?- gostaDe(X, tigre).
?- gostaDe(X, cobra).
?- gostaDe(X, chocolate).
?- gostaDe(X, Y).
*/
