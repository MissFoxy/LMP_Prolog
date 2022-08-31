
/*prende un valore randomico dalla lista, lo cancella e lo aggiunge alla fine della lista */
permutazione(Lista, ListaPermutata):-
    random_member(E,Lista),
    select(E, Lista, ListaFinaleP),
    append(ListaFinaleP, [E], ListaPermutata).




/*prende due valori randomici dalla lista, li cancella e li aggiunge alla fine della lista */
permutazione2(Lista, ListaPermutata):-
    random_member(E,Lista),
    select(E, Lista, ListaFinaleP1),
    random_member(H,ListaFinaleP1),
    select(H, ListaFinaleP1, ListaFinaleP2),
    append(ListaFinaleP2, [E,H], ListaPermutata).


