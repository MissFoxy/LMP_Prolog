

minimo([E], E).

minimo([H|Resto], H):-
    minimo(Resto, Min),
    H < Min.

minimo([H|Resto], Min):-
    minimo(Resto, Min),
    H >= Min.



minimoInListaDiListe([H|Resto], Attuale):-
    minimoInListaDiListe(Resto, MinPrec),
    minimo(H, Attuale),
    Attuale < MinPrec.


minimoInListaDiListe([H|Resto], MinPrec):-
    minimoInListaDiListe(Resto, MinPrec),
    minimo(H, Attuale),
    Attuale >= MinPrec.


minimoInListaDiListe([Interno], UltimoMinimo):-
    length([Interno], 1),
    minimo(Interno, UltimoMinimo).




massimo([E], E).

massimo([H|Resto], H):-
    massimo(Resto, Max),
    H > Max.

massimo([H|Resto], Max):-
    massimo(Resto, Max),
    H =< Max.


massimoInListaDiListe([H|Resto], Attuale):-
    massimoInListaDiListe(Resto, MaxPrec),
    massimo(H, Attuale),
    Attuale > MaxPrec.


massimoInListaDiListe([H|Resto], MaxPrec):-
    massimoInListaDiListe(Resto, MaxPrec),
    massimo(H, Attuale),
    Attuale =< MaxPrec.


massimoInListaDiListe([Interno], UltimoMassimo):-
    length([Interno], 1),
    massimo(Interno, UltimoMassimo).

