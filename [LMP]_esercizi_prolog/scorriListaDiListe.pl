/*CONTO QUANTI * CI SONO DENTRO LA LISTA*/
conto([],0):-
    !.

conto([H|T],N):-
    H \= *,
    conto(T,N).

conto([H|T],Num):-
    H == *,
    conto(T,NumP),
    Num is NumP + 1.

/*FINE DELLE LISTE, ASSEGNO IL VALORE 0 AL MIO CONTATORE*/
coperturaControllo([],0):-
    !.

/*
SCORRO LA LISTA E PASSO OGNI LISTA ALL'INTERNO DELLA LISTA A CONTO, POI
SOMMO I VALORI OTTENUTI DA CONTO AI VALORI PASSATI COPERTURA
PER SALVARMI ANCHEI PASSAGGI PRECEDENTI*/
coperturaControllo([H|Resto],Npass):-
    conto(H,NumP),
    coperturaControllo(Resto,Num),
    Npass is NumP + Num .




/*MAPPA E COMPERTURA*/
copertura([H|Resto],Copertura):-
    coperturaControllo([H|Resto],Con),
    Copertura =:= Con.

/*TIPO DI INPUT: copertura([[*,*,*,*,e,e],[*,e,e,*,e],[*,e,*,*],[*,o,p,e]],10).*/
