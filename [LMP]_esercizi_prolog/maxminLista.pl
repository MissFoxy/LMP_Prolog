/*

max_member/2,                  -Max, +List
min_member/2,                  -Min, +List
*/


max([L], L).

max([H|RESTO], H):-
    max(RESTO, M),
    H >= M.



max([H|RESTO], M):-
    max(RESTO, M),
    H < M.





min([L], L).

min([H|RESTO], H):-
    min(RESTO, M),
    H < M.


min([H|RESTO], M):-
    min(RESTO, M),
    H >= M.



