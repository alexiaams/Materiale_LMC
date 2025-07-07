% ------------------------------
% Exercitiul 1 - count_elements/2
% ------------------------------

% count_elements(+List, -Result)
count_elements([], []).
count_elements([H|T], [(N, H)|R]) :-
    count_occurrences([H|T], H, N),
    remove_all(T, H, NewTail),
    count_elements(NewTail, R).

% count_occurrences(+List, +Element, -Count)
count_occurrences([], _, 0).
count_occurrences([H|T], H, N) :-
    count_occurrences(T, H, N1),
    N is N1 + 1.
count_occurrences([X|T], H, N) :-
    X \= H,
    count_occurrences(T, H, N).

% remove_all(+List, +Element, -Result)
remove_all([], _, []).
remove_all([H|T], H, R) :-
    remove_all(T, H, R).
remove_all([X|T], H, [X|R]) :-
    X \= H,
    remove_all(T, H, R).
