
/* DIVIDERE LA LISTA IN 2 PARTI (Caso dispari un elemento in piÃ¹ nella prima lista)
dividiLista([1,2,3,4,5], L1, L2).
L1 = [1, 3, 5],
L2 = [2, 4] .
*/

dividiLista([],[],[]).

dividiLista([X],[X],[]).

dividiLista([X,Y|R],L1,L2):-
  append([X],LX,L1),
  append([Y],LY,L2),
  dividiLista(R,LX,LY).

/*Divide La Lista in 2 al centro

dividiIn2([1,2,3,4,5,6], L1, L2).
L1 = [1, 2, 3],
L2 = [4, 5, 6]
*/

dividiIn2(ListaIniziale, ListaFinale1, ListaFinale2):-
    estraiAlCentro(E, ListaIniziale),
    scorri(E, ListaIniziale, ListaFinale2),
    reverse(ListaIniziale, ListaInizialeR),
    scorri(E, ListaInizialeR, ListaFinaleR),
    eliminaPrimoElemento(ListaFinaleR, ListaFinaleSenzaElementoDiTroppo),
    reverse(ListaFinaleSenzaElementoDiTroppo, ListaFinale1).

%!  %%%%%%%%%%%%%%%%%%%%%%%%%%

eliminaPrimoElemento([_|RESTO], RESTO).


% scorre fino a che non incontra E, resistituisce la lista dopo E(compreso)
% c'è uno scorri moolto più corto di questo

scorri(E,[],[]).

scorri(E, [H|LISTA], L):-
    E \= H,
    scorri(E, LISTA, L).

scorri(E, [E|LISTA], LISTAP):-
  scorriP(E, [E|LISTA], LISTAP).

scorriP(E,[],[]).

scorriP(_,[H|LISTA], LISTAP):-
    append([H], LISTAN, LISTAP),
    scorriP(_, LISTA, LISTAN).



%!  %%%%%%%%%%%%%%%%%%%%%%


contaNumElementiInLista([], 0).

contaNumElementiInLista([H|Lista], Num):-
    contaNumElementiInLista(Lista, NumP),
    Num is NumP + 1.



estraiElemento(E, Lista, Posizione):-
    PosizioneNTH is Posizione - 1,
    nth0(PosizioneNTH, Lista, E).


/*estrae l'elemento al centro della lista*/

estraiAlCentro(E, Lista):-
    contaNumElementiInLista(Lista, Num),
    Posizione is Num // 2,
    PosizioneC is Posizione + 1,
    estraiElemento(E, Lista, PosizioneC).

