% scorre fino a che non incontra E, resistituisce la lista dopo E(compreso)

scorri(E,[],[]).

scorri(E, [H|LISTA], L):-
    E \= H,
    scorri(E, LISTA, L).

scorri(E, [E|LISTA], LISTAP):-
  scorriP(E, [E|LISTA], LISTAP).

scorriP(E,[],[]).

scorriP(_,[H|LISTA], LISTAP):-
    append([H], LISTAN, LISTAP),
    scorriP(_, LISTA, LISTAN).


