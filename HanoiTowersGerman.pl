hanoi(1,X,Y,_):- write([X,Y]),!.
hanoi(D,X,Y,Z):-
 D>1,
 C is D-1,
 hanoi(C,X,Z,Y),
 write(", "),
 hanoi(1,X,Y,_),
 write(", "),
 hanoi(C,Z,Y,X).
 moves(D):- D==1->write(1); R is 2^D-1,write(R).
