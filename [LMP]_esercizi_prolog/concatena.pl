
% concatena
concatena([], L,L).
concatena([H|T], L, [H|T1]):-
	concatena(T,L,T1).

/*
concatena([1,2,3], L, L).
L = [1, 2, 3|L].

?- concatena([1,2,3], [1,2], L).
L = [1, 2, 3, 1, 2].

*/
