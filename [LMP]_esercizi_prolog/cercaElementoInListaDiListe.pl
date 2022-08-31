
%NOTA: ESEMPIO FATTO CON *

% cercaElementoInListaDiListe


/*CONTO QUANTI * CI SONO DENTRO LA LISTA*/
conto([],0):-
    !.

conto([H|T],N):-
    H \= *,
    conto(T,N).

conto([H|T],N):-
    H == *,
    conto(T,NP),
    N is NP + 1.

/*FINE DELLE LISTE, ASSEGNO IL VALORE 0 AL MIO CONTATORE*/
cercaElementoInListaDiListe([],0):-
    !.

/*
SCORRO LA LISTA E PASSO OGNI LISTA ALL'INTERNO DELLA LISTA A CONTO, POI
SOMMO I VALORI OTTENUTI DA CONTO AI VALORI PASSATI COPERTURA
PER SALVARMI ANCHE I PASSAGGI PRECEDENTI*/
cercaElementoInListaDiListe([H|Resto],Ntot):-
    conto(H,NP),
    cercaElementoInListaDiListe(Resto,N),
    Ntot is NP + N .



%con questo funziona solo se gli dai tu Copertura, senza non funziona
/*COPERTURA*/
copertura([H|Resto],Copertura):-
    cercaElementoInListaDiListe([H|Resto],Controllo),
    Copertura =:= Controllo.

/*TIPO DI INPUT: copertura([[*,*,*,*,e,e],[*,e,e,*,e],[*,e,*,*],[*,o,p,e]],10).*/


contoElemento([], E, 0).

contoElemento([H|Resto], E, Ntot):-
    H \= E,
    contoElemento(Resto, E, Ntot).

contoElemento([E|Resto], E, Ntot):-
    contoElemento(Resto, E, N),
    Ntot is N + 1.


contoElementoInListaDiListe([], E, 0).

contoElementoInListaDiListe([L|Resto], E, Ntot):-
    contoElemento(L, E, N),
    contoElementoInListaDiListe(Resto, E, NP),
    Ntot is N + NP.
