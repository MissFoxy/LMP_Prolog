caratteriVerticaliConsecutivi([L,L1|T],Elem,Pos,Num):-
    nth0(Pos,L,Elem),
    nth0(Pos,L1,Elem),
    caratteriVerticaliConsecutivi2(Pos,[L1|T],Elem,M),
    Num is M+1.

caratteriVerticaliConsecutivi([_|T],Elem,Pos,Num):-
    caratteriVerticaliConsecutivi(T,Elem,Pos,Num).

caratteriVerticaliConsecutivi([],_,_,_):-
    false,!.

caratteriVerticaliConsecutivi2(Pos,[L|T],Elem,Num):-
    nth0(X,L,Elem),
    Pos =:= X,
    caratteriVerticaliConsecutivi2(Pos,T,Elem,N),
    Num is N+1.

caratteriVerticaliConsecutivi2(_,_,_,0):-!.

