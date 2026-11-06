% Task 1 - Delete Every Occurrence

% Base case
deleteElement(_, [], []).


% If X is the head, remove it
deleteElement(X, [X|Tail], Result) :-
    deleteElement(X, Tail, Result).


% If the head is not X, keep it
deleteElement(X, [Head|Tail], [Head|Result]) :-
    X \= Head,
    deleteElement(X, Tail, Result).



% Task 2 - Add at the End

% Base case: if the list is empty,
% create a list containing X
add_at_the_end(X, [], [X]).


% Recursive case
add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).
