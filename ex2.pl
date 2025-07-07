% ------------------------------
% Exercițiul 2 - inc_concat/1
% ------------------------------

% inc_concat(+List)
inc_concat(List) :-
    append(L1, L2, List),
    L1 \= [],
    L2 \= [],
    is_strict_inc(L1),
    is_strict_inc(L2).

% is_strict_inc(+List)
is_strict_inc([]).
is_strict_inc([_]).
is_strict_inc([A, B | T]) :-
    A < B,
    is_strict_inc([B | T]).
