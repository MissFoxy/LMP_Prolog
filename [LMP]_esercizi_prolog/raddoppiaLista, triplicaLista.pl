

raddoppiaLista(LISTA, LISTAX2):-
    append(LISTA,LISTA, LISTAX2).

triplicaLista(LISTA, LISTAX3):-
    raddoppiaLista(LISTA, LISTAX2),
    append(LISTA,LISTAX2, LISTAX3).

triplicaLista2(LISTA, LISTAX3):-
    append(LISTA, LISTA, LISTAX2),
    append(LISTA, LISTAX2, LISTAX3).
