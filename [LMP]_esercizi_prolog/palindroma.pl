/*verificare se è palindroma*/

palindroma([]).
palindroma([H|T]):-
    inverti([H|T],[H|T]).

/*inverti lista*/

inverti([],[]).
inverti([H|T],R):-
	inverti(T,T1),
	append(T1,[H],R).

/*palindroma semplice */

palindroma([],[]).
palindroma(Lista1, Lista2):-
	reverse(Lista1, Lista2),
	Lista1 == Lista2.
