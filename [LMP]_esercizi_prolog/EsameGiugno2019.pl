/*conta elementi contigui */

conta(_,[],0):-!.

conta(X,[X|T],Lungh):-
    conta2(X,T,M),
    Lungh is M+1.

conta(X,[_|T],Lungh):-
    conta(X,T,Lungh).

conta2(_,[],0):-!.

conta2(X,[X|T],Lungh):-
    conta2(X,T,M),
    Lungh is M + 1.

conta2(X,[Y|_],0):-
    X \= Y,!.


lineaOrizzontaleInUnPianoFattaDi(A,Lunghezza,[L|_]):-
    conta(A,L,Lunghezza),
    Lunghezza =\= 0,!.

lineaOrizzontaleInUnPianoFattaDi(A,Lunghezza,[_|T]):-
    lineaOrizzontaleInUnPianoFattaDi(A,Lunghezza,T).


/*punto 2*/

verifica(A, LunghezzaLato, [L|T]):-
    conta(A,L,Lunghezza),
    Lunghezza =\= 0,
    verifica(A,Rip,T),
    LunghezzaLato is Rip + 1.

verifica(A, Lu, [_|T]):-
    verifica(A, Lu, T).

verifica(_,0,[]):-!.

quadratoInUnPianoFattoDi(A,LunghezzaLato,Piano):-
    verifica(A,LunghezzaLato,Piano),
    lineaOrizzontaleInUnPianoFattaDi(A,Lunghezza,Piano),
    LunghezzaLato =:= Lunghezza.
