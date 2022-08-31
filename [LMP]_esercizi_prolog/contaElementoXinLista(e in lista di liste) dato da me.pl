%conta gli elementi uguali ad un elemento X

conta(_,[],0):-!.

conta(X,[X|T],Lungh):-
    conta(X,T,M),
    Lungh is M+1.

conta(X,[Y|T],L):-
    X \= Y,
    conta(X,T,L).



/*
conta(X,[A,B|_],1):-
    X = A,
    X \=B,!.
*/



/*anche in lista di liste */


contoElemento([], E, 0).

contoElemento([H|Resto], E, Ntot):-
    H \= E,
    contoElemento(Resto, E, Ntot).

contoElemento([E|Resto], E, Ntot):-
    contoElemento(Resto, E, N),
    Ntot is N + 1.


contoElementoInListaDiListe([], E, 0).

contoElementoInListaDiListe([L|Resto], E, Ntot):-
    contoElemento(L, E, N),
    contoElementoInListaDiListe(Resto, E, NP),
    Ntot is N + NP.
