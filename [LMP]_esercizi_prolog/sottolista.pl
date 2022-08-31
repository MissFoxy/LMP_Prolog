/*
nth0/3,  % ?N, ?List, ?Elem        --ntho(X,[b,a,b],a). --> X=1 visualizza L'INDICE DI UN ELEMENTO OVVERO LA POSIZIONE
 */


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


/*restituisce la lista tra E1 e E2 compresi */

estraiSottoLista(Elemento1, Elemento2, Lista, ListaTagliata):-
  scorri(Elemento1, Lista, LISTAE1),
  reverse(LISTAE1, LISTAE2),
  scorri(Elemento2, LISTAE2, ListaT),
  reverse(ListaT, ListaTagliata).





/*
scorriDopo(E, [E],[E],[E]).

scorriDopo(E, [H|Resto], _, LISTAN):-
    E \= H,
    scorriDopo(E, Resto, _, LISTAN).

scorriDopo(E, [E|RESTO], LISTATagliata, LISTANuova):-
      delete(LISTANuova, RESTO, LISTATagliata).

scorriEliminando(E, [E|RESTO], LISTATagliata, LISTANuova):-
  scorriEliminando(H, RESTO, LISTATagliata, LISTANuovaP),
  delete([E|RESTO], E, LISTANuova).

*/
