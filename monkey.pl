inside(monkey, hall).
inside(chair, hall).
inside(banana, hall).

at(monkey, corner).
at(chair, window).
at(banana, center).

push(monkey, chair).
climb(monkey, chair).

reach(monkey, banana) :-
    inside(monkey, hall),
    inside(chair, hall),
    inside(banana, hall),
    push(monkey, chair),
    climb(monkey, chair).