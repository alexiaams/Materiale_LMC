% ------------------------------
% Exercițiul 3.a - subformula/2
% ------------------------------

subformula(F, F).  % identică
subformula(non(F), S) :-
    subformula(F, S).
subformula(si(F1, F2), S) :-
    subformula(F1, S);
    subformula(F2, S).
subformula(sau(F1, F2), S) :-
    subformula(F1, S);
    subformula(F2, S).
