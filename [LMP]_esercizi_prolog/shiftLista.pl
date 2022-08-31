
/*mette un elemento all'inizio della lista data */

shiftElemPrimaPosizione(LISTA, LISTA2, ELEMENTO):-
    append([ELEMENTO], LISTA, LISTA2).



/* RUOTA UN ELEMENTO ALL'ULTIMA POSIZIONE */

shiftElementoUltimaPosizione([X|L],LR):-
  append(L,[X],LR).

