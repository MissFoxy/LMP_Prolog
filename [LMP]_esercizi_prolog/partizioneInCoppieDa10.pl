/*divide la lista in blocchi di elementi che sommati danno 10*/
bloccoDa10([],[]).


bloccoDa10([H],ListaFinale):-
    last([H], H),
    append([H], ListaFinaleP, ListaFinale),
    bloccoDa10([],ListaFinaleP).

/*se ci sono due ultimi elementi che sommati non danno 10*/
bloccoDa10([H1,H2],ListaFinale):-
    last([H1,H2], H2),
    append([H1,H2], ListaFinaleP, ListaFinale),
    bloccoDa10([],ListaFinaleP).


bloccoDa10([H|Resto], ListaFinale):-
    H == 10,
    append([[H]], ListaFinaleP, ListaFinale),
    bloccoDa10(Resto, ListaFinaleP).


bloccoDa10([H1,H2|Resto], ListaFinale):-
    S is H1 + H2,
    S == 10,
    append([[H1, H2]], ListaFinaleP, ListaFinale),
    bloccoDa10(Resto, ListaFinaleP).


bloccoDa10([H1,H2,H3|Resto], ListaFinale):-
    S is H1 + H2 + H3,
    S == 10,
    append([[H1, H2, H3]], ListaFinaleP, ListaFinale),
    bloccoDa10(Resto, ListaFinaleP).


bloccoDa10(Lista,ListaFinale):-
    permutazione(Lista,ListaPermutata),
    bloccoDa10(ListaPermutata, ListaFinale).



%bloccoDa10([10,1,8,2,7,3,9], L).
%permutazione([10,1,8,2,7,3,9], L).   L = [10, 1, 8, 2, 7, 3, 9].


permutazione(Lista, ListaPermutata):-
    random_member(E,Lista),
    select(E, Lista, ListaFinaleP),
    append(ListaFinaleP, [E], ListaPermutata).

