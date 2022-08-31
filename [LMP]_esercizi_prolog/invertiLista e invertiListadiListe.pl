

scorriLista([]).

scorriLista([_|RESTO]):-
    scorriLista(RESTO).


invertiLista([],[]).

invertiLista([H|RESTO], LISTAP):-
    append(LISTA, [H], LISTAP),
    invertiLista(RESTO, LISTA).



invertiLista2(Lista1, Lista2):-
    reverse(Lista1, Lista2).



invertiListadiListe([],[]).

invertiListadiListe([H|RESTO], LISTAP):-
    reverse(H, H2),
    append(LISTA, [H2], LISTAP),
    invertiListadiListe(RESTO, LISTA).



