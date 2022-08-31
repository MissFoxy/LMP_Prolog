

/*intersezione */
intersect([],[],[]).
intersect(_,[],[]).
intersect([],_,[]).

intersect([X|R],Y,[X|Z]):-
	member(X,Y),
	!,
	intersect(R,Y,Z),
	!.

intersect(R,Y,[H|Z]):-
	nonvar(H),
	member(H,R),
	member(H,Y),
	!,
	intersect(R,Y,Z),
	!.

intersect([_|R],Y,Z):-
	intersect(R,Y,Z).


