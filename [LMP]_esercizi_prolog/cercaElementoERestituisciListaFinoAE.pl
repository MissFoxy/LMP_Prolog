

scorri([],[],E).

scorri([E|T], T, E).

scorri([H|T], ListaF, E):-
    H \= E,
    scorri(T, ListaF, E).


scorriERestituisci([],[],_).

scorriERestituisciListaFinoAElemEscluso(ListaIniziale, ListaFinale, E):-
    reverse(ListaIniziale, ListaInizialeR),
    scorri(ListaInizialeR, ListaFinaleR, E),
    reverse(ListaFinaleR, ListaFinale).

/*
scorriERestituisciListaFinoAElemEscluso([1,2,3,4,5,5,3,3,3,4,5], LF, 3).
LF = [1, 2, 3, 4, 5, 5, 3, 3] .
scorriERestituisciListaFinoAElemEscluso([1,2,3,4], LF, 3).
LF = [1, 2]
*/

%%%%%%%%%%%%%%%%%%%%%%%%%%%------------------%%%%%%%%%%%%%%%%%%%%%%%%%%%



scorriECompreso([],[],E).

scorriECompreso([E|T], [E|T], E).

scorriECompreso([H|T], ListaF, E):-
    H \= E,
    scorriECompreso(T, ListaF, E).



cercaElementoERestituisciListaFinoAECompreso(ListaIniziale, ListaFinale, Elemento):-
    reverse(ListaIniziale, ListaInizialeR),
    scorriECompreso(ListaInizialeR, ListaFinaleR, Elemento),
    reverse(ListaFinaleR, ListaFinale).
