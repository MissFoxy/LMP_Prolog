
/* raddoppio tutti i singoli valori in lista*/

raddoppiaValori2([],[]).

raddoppiaValori2([H1|RESTO], ListaX2F):-
    raddoppiaValori2(RESTO, ListaX2P),
    H is H1 * 2,
    append(ListaX2P, [H], ListaX2F).

raddoppiaValori(Lista, ListaX2F):-
    raddoppiaValori2(Lista, ListaX2),
    reverse(ListaX2, ListaX2F).

/* triplica tutti i singoli valori in lista*/

triplicaValori2([],[]).

triplicaValori2([H1|RESTO], ListaX2F):-
    triplicaValori2(RESTO, ListaX2P),
    H is H1 * 3,
    append(ListaX2P, [H], ListaX2F).

triplicaValori(Lista, ListaX2F):-
    triplicaValori2(Lista, ListaX2),
    reverse(ListaX2, ListaX2F).


/* CON IL PREDICATO TRIPLICA VERRA' SCRITTA LA LISTA INIZIALE 3 VOLTE */
/*
/* triplica(L, LLL) la lista separando le singole liste */
triplica([],[]).

triplica(L, LLL) :-
    append([L], [L], Y),
    append([L],Y, LLL).

triplicazione([], []).

triplicazione([H|T], LT):-
    triplica(H,LT),
    triplicazione(T,LT).

*/

/* triplica(L, LLL) la lista non separando le singole liste */
triplica([],[]).

triplica(L, LLL) :-
    append(L, L, Y),
    append(L,Y, LLL).

triplicazione([], []).

triplicazione([H|T], LT):-
    triplica(H,LT),
    triplicazione(T,LT).


