% ------------------------------
% Exercițiul 3.b - proper_subformula/2
% ------------------------------

proper_subformula(F, S) :-
    subformula(F, S),
    F \= S.
