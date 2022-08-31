
/*cerca elemento specifico e lo elimina */
cercaElementoSpecifico(ListaIniziale, ListaFinale, E):-
    cercaES(ListaIniziale,ListaFinale, E).

cercaES(ListaIniziale, ListaFinale, H):-
    member(H, ListaIniziale),
    selectchk(H, ListaIniziale, ListaFinale).


%cercaElementoSpecifico([1,2,3,4], LF, 2). LF = [1, 3, 4] .
