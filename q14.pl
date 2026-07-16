:-dynamic estado/1.
estado(apagada).

lampada(X) :- estado(X).
acende :- 
    retract(estado(apagada)),
    asserta(estado(acesa)).

apaga :- 
    retract(estado(acesa)),
    asserta(estado(apagada)).