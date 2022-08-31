/*CASO FINALE*/
cercaRestoScambio([C,D|Resto1],[J,K|Resto1],[J,K],[C,D]).

/*CASO INTERMEDIO*/
cercaResto([H1,H2,H3,H4|Resto1],[H1,H2|Resto2],[J,K],[C,D]):-
    [H1,H2] \= [C,D],
    cercaResto([H2,H3,H4|Resto1],[H2|Resto2],[J,K],[C,D]).


/*CASO TRUE*/
cercaResto([H1,H2,C,D|Resto1],[H1,H2|Resto2],[J,K],[C,D]):-
    cercaRestoScambio([C,D|Resto1],Resto2,[J,K],[C,D]).



/*CASO TRUE*/
cercoCoppieScambio([J,K|Resto1],[C,D|Resto2],[J,K],[C,D]):-
    cercaResto(Resto1,Resto2,[J,K],[C,D]).


/*CASO BASE COPPIE IN PRIMA E SECONDA POSIZIONE*/
cercoCoppie([J,K|Resto1],[C,D|Resto2],[J,K],[C,D]):-
    cercaResto(Resto1,Resto2,[J,K],[C,D]).

/*CASO BASE COPPIE IN SECONDA E TERZA POSIZIONE*/
cercoCoppie([H,J,K|Resto1],[H|Resto2],[J,K],[C,D]):-
    cercoCoppie([J,K|Resto1],Resto2,[J,K],[C,D]).



/*CERCO LA COPPIA SENZA J*/
cercoCoppie([H1,H2,H3,H4|Resto1],[H1,H2|Resto2],[J,K],[C,D]):-
    H1 \= J,
    H2 \= K,
    H3 \= J,
    cercoCoppie([H2,H3,H4|Resto1],[H2|Resto2],[J,K],[C,D]).

/*CERCO LA COPPIA CON J*/
cercoCoppie([H1,H2,J,K|Resto1],[H1,H2|Resto2],[J,K],[C,D]):-
    H1 \= J,
    H2 \= K,
    cercoCoppieScambio([J,K|Resto1],Resto2,[J,K],[C,D]).


spostamento(Iniziale,Finale,[J,K],[C,D]):-
    cercoCoppie(Iniziale,Finale,[J,K],[C,D]).


