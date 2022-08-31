
somma([H],H).

somma([H|RESTO], S):-
    somma(RESTO, S1),
    S is H + S1.



/* moltiplica tutti i valori in lista */
moltiplica([H],H).

moltiplica([H|RESTO], S):-
    moltiplica(RESTO, S1),
    S is H * S1.


/* dal'ultimo elemento elimina gli altri mano mano e da il risultato con - davanti*/
%%
%differenza ignoralo che è fatto male ed è inutile

differenza([H],H).

differenza([H|RESTO], S):-
    differenza(RESTO, S1),
    S1 >= 0,
    S is H - S1.

differenza([H|RESTO], S):-
    differenza(RESTO, S1),
    S1 < 0,
    S is H + S1.

