
/*Cerca un elemento E nella lista e si segna le posizioni in cui l'ha trovato */

cercaElemento(E, [], 0, []):-!.

cercaElemento(E, [E|RESTO], Num, ListaPosizioni):-
    cercaElemento(E, RESTO, M, ListaPosizioniP),
    Num is M + 1,
    append(ListaPosizioniP, [Num], ListaPosizioni).


cercaElemento(E, [H|RESTO], Num, ListaPosizioni):-
    E \= H,
    cercaElemento(E,RESTO, M, ListaPosizioni),
    Num is M + 1.


cerca(Elemento, Lista, ListaPosizioni):-
    reverse(Lista, ListaR),
    cercaElemento(Elemento, ListaR, _, ListaPosizioni).


