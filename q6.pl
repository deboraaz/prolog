% questao 6

num(N,positivo) :- N>0, !.
num(0,nulo) :- !.
num(N,negativo) :- N<0. % nao precisa corte pq ja é o ultimo