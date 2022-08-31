
/* INSERISCI IN L3, TUTTI GLI ELEMENTI DI L1 CHE NON STANNO IN L2 */

differenza([], _, []).

differenza([X|R1], L2, [X|R3]):-
    not(member(X,L2)),
    differenza(R1,L2,R3).

differenza([X|R1], L2, L3):-
  member(X,L2),
  differenza(R1,L2,L3),
  !.

