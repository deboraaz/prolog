pai(ivo, eva).
pai(gil, rai).
pai(gil, clo).
pai(gil, ary).
pai(rai, noe).
pai(ary, gal).

mae(ana, eva).
mae(bia, rai).
mae(bia, clo).
mae(bia, ary).
mae(eva, noe).
mae(lia, gal).


eh_feliz(X) :- mae(X, _); pai(X, _).

eh_casal(X, Y) :-mae(X, Z), pai(Y, Z).
