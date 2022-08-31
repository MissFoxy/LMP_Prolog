


% scorre fino a che non incontra E, resistituisce la lista dopo E(compreso)


scorriECompreso([],[],E).

scorriECompreso([E|T], [E|T], E).

scorriECompreso([H|T], ListaF, E):-
    H \= E,
    scorriECompreso(T, ListaF, E).


/* funziona ma è più lungo

scorri(E,[],[]).

scorri(E, [H|LISTA], L):-
    E \= H,
    scorri(E, LISTA, L).

scorri(E, [E|LISTA], LISTAP):-
  scorriP([E|LISTA], LISTAP).


scorriP([],[]).

scorriP([H|LISTA], LISTAP):-
    append([H], LISTAN, LISTAP),
    scorriP(LISTA, LISTAN).

*/



% scorre fino a che non incontra E, resistituisce la lista dopoE(escluso)

scorri([],[],E).

scorri([E|T], T, E).

scorri([H|T], ListaF, E):-
    H \= E,
    scorri(T, ListaF, E).



% funziona ma è lungo

scorriEscludendo(E,[],[]).

scorriEscludendo(E, [H|LISTA], L):-
    E \= H,
    scorriEscludendo(E, LISTA, L).

scorriEscludendo(E, [E|LISTA], LISTAP):-
  scorriEscludendoP(LISTA, LISTAP).


scorriEscludendoP([],[]).

scorriEscludendoP([H|LISTA], LISTAP):-
    append([H], LISTAN, LISTAP),
    scorriEscludendoP(LISTA, LISTAN).
