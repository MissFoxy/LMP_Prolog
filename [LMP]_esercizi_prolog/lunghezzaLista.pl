

lunghezzaLista([],0):-!.

lunghezzaLista([H|RESTO], P):-
    lunghezzaLista(RESTO, PP),
    P is PP + 1.

%%%%%%%%%%%%%%

contaNumElementiInLista([], 0).

contaNumElementiInLista([H|Lista], Num):-
    contaNumElementiInLista(Lista, NumP),
    Num is NumP + 1.


%%%%%%%%%%%%%%


/*controlla se una lista � pari */

lunghezzaPari([]).
lunghezzaPari([_,_|T]):-
	lunghezzaPari(T).

pari(Lista):-
    lungh(Lista, L),
    LD is mod(L, 2),
    LD =:= 0.

