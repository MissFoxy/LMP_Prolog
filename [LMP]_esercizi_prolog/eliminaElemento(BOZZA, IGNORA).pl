/*Elimina IL PRIMO valore X dalla lista
select/3    % ?X, ?List, ?Rest
select(3,[1,2,3,4,5], L).  L = [1, 2, 4, 5] .
*/

/*Elimina TUTTI gli elementi X dalla lista */
%delete(LISTA, Elemento, ListaSenzaElemento).

/* Elimina un ELEMENTO SPECIFICO se è nella posizione data */
eliminaElemSpecificoInPosizioneSpecifica(ListaIniziale, Elemento, Posizione, ListaFinale):-
    nth1(Posizione, ListaIniziale,  Elemento, ListaFinale).

/*elimina un elemento specifico (esempio il secondo elemento E che incontra)

nth0/3, % ?N, ?List, ?Elem   --ntho(X,[b,a,b],a). --> X=1 visualizza L'INDICE DI UN ELEMENTO OVVERO LA POSIZIONE

*/


/*
eliminaElementoSpecifico([1,2,3,4,5,6], 3, 1, L ).
L = [1, 2, 4, 5, 6]
*/
eliminaElementoSpecifico(ListaIniziale, Elemento, PosizioneElimina, ListaFinale):-
    cerca(Elemento,ListaIniziale, ListaPosizioni),
    PosizioneNTH is PosizioneElimina -1,
    nth0(PosizioneNTH, ListaPosizioni, P), %PosizioneNTH è la posizione(partendo da 0 di P
    nth1(P, ListaIniziale,  Elemento, ListaFinale).


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



/*Elimina l'ULTIMO elemento E nella lista lasciando gli altri FA CAGARE STO PREDICATO*/
eliminaUltimo(Elemento, ListaIniziale, ListaFinale):-
    reverse(ListaIniziale, ListaInizialeReversed),
    select(Elemento,ListaInizialeReversed, ListaFinaleReversed),
    reverse(ListaFinaleReversed, ListaFinale).

