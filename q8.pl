bin(0) :- write(0).
bin(1) :- write(1).

bin(X) :-
    XProx is X div 2,
    bin(XProx),
    Resto is X mod 2,
    write(Resto).
