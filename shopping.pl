
% Starting basket with five items
start :-
    menu([coffee, milk, chocolate, apple, juice]).


% Display the menu
menu(List) :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE .'), nl,
    read(Choice),
    process_choice(Choice, List).


% Display all items
process_choice(d, List) :-
    display_items(List),
    menu(List).


% Add an item
process_choice(a, List) :-
    write('enter the item you want to add : '),
    read(Item),
    append(List, [Item], NewList),
    write('The item has been added'), nl,
    menu(NewList).


% Exit the program
process_choice(e, _) :-
    write('Goodbye!'), nl.


% Handle invalid choices
process_choice(_, List) :-
    write('Invalid choice. Please try again.'), nl,
    menu(List).


% Display items recursively
display_items([]).

display_items([Head|Tail]) :-
    write(Head), nl,
    display_items(Tail).
