

cercaElemento(_, [], 0, []):-!.

cercaElemento(E, [E|RESTO], Num, ListaPosizioni):-
    cercaElemento(E, RESTO, M, ListaPosizioniP),
    Num is M + 1,
    append(ListaPosizioniP, [Num], ListaPosizioni).


cercaElemento(E, [H|RESTO], Num, ListaPosizioni):-
    E \= H,
    cercaElemento(E,RESTO, M, ListaPosizioni),
    Num is M + 1.


cercaERestituisceListaPosizioni(Elemento, Lista, ListaPosizioni):-
    reverse(Lista, ListaR),
    cercaElemento(Elemento, ListaR, _, ListaPosizioni).


%appenddiappend(Lista1, Lista2, LF):-
cercaElementoInListaDiListaContando(_, [],[]).


cercaElementoInListaDiListaContando(Elemento, [Lista1|Resto], ListaElementi):-
    cercaERestituisceListaPosizioni(Elemento, Lista1, ListaPosizioni1),
    append([ListaPosizioni1], ListaPosizioniP, ListaElementi),
    cercaElementoInListaDiListaContando(Elemento, Resto, ListaPosizioniP).



