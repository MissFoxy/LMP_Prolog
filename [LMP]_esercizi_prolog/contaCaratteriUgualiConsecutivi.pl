


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

/*
 conta(a,[a,d,f,s,a,a,a],L).
L = 1 ;
L = 3 .
*/
