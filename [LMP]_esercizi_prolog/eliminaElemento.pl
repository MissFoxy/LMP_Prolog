/*
NB a seconda di come lo si usa nth1/4 può sia cancellare che inserire un elemento!
ricorda che la prima Lista è quella con l'elemento in più
*/

/*cancellare ultimo elemento lista*/

cancella([X],[]).
cancella([H|T],[H|T1]):-
	cancella(T,T1),!.


/* Elimina un ELEMENTO SPECIFICO se è nella posizione data */

eliminaElemSpecificoInPosizioneSpecifica(ListaIniziale, Elemento, Posizione, ListaFinale):-
    nth1(Posizione, ListaIniziale,  Elemento, ListaFinale).

/*
%eliminaXElemento(ListaIniziale, Posizione, ListaFinale):-
    % estrai elemento in X posizione
    %  nth1(Posizione, ListaIniziale,  Elemento, ListaFinale).
*/




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
/* IMPORTANTE!! elimina il primo, secondo,ecc elemento E trovato, "PosizioneElimina"intente se è il primo E, il secondo E, ecc, non dove è!!
eliminaElementoSpecifico([1,2,3,4,5,6], 3, 1, L ).
L = [1, 2, 4, 5, 6]
*/%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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





