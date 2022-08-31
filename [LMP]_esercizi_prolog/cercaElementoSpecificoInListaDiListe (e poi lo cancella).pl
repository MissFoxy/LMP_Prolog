

/*cerca elemento specifico e lo elimina */

cercaElementoSpecifico([],[],_).

cercaElementoSpecifico(ListaIniziale, ListaFinale, H):-
    member(H, ListaIniziale),
    delete(ListaIniziale, H, ListaFinale).

%cercaElementoSpecifico([1,2,3,4], LF, 2).    LF = [1, 3, 4] .

cercaElementoSpecificoInListaDiListe([],[],_):-!.

cercaElementoSpecificoInListaDiListe([Lista1|Resto], ListaFinaleP, E):-
    cercaElementoSpecifico(Lista1, ListaFinaleCES, E),
    append([ListaFinaleCES], ListaFinale, ListaFinaleP),
    cercaElementoSpecificoInListaDiListe(Resto, ListaFinale,E).

/*
cercaElementoSpecificoInListaDiListe([[1,2,3,4,2],[3,2,1,54,2]], LF, 2).
LF = [[1, 3, 4], [3, 1, 54]] .
*/


/* funziona anche con concatena

% concatena
concatena([], L,L).
concatena([H|T], L, [H|T1]):-
	concatena(T,L,T1).


cercaElementoSpecificoInListaDiListe([Lista1|Resto], ListaFinaleP, E):-
    cercaElementoSpecifico(Lista1, ListaFinaleCES, E),
    concatena([ListaFinaleCES], ListaFinale, ListaFinaleP),
    cercaElementoSpecificoInListaDiListe(Resto, ListaFinale,E).

*/


