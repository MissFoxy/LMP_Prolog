


conto([],0, E):-!.


conto([H|RESTO], NP, E):-
   H \= E,
   conto(RESTO, NP, E).


conto([E|RESTO], NP, E):-
    conto(RESTO, NN,E),
    NP is NN + 1.

contaElementoXInListaDiListe([], 0, E):-!.

contaElementoXInListaDiListe([LISTA1|RESTO], NumeroX, Elemento):-
   conto(LISTA1, NP, Elemento),
   contaElementoXInListaDiListe(RESTO, NCE, Elemento),
   NumeroX is NP + NCE.


%contaElementoXInListaDiListe([[123,1,23,4,5,2,1],[1,23,4,5],[1,2,1]], NumeroX, 1).NumeroX = 5
