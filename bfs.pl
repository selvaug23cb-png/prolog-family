connected(a,b).
connected(a,c).
connected(b,d).
connected(b,e).
connected(c,f).
connected(c,g).
connected(d,h).
connected(e,i).
connected(f,j).
connected(g,k).


bfs(Start, Goal, Route) :-
    travel([[Start]], Goal, RevRoute),
    reverse(RevRoute, Route).

travel([[Goal|Rest]|_], Goal, [Goal|Rest]).

travel([[Current|Rest]|Others], Goal, Route) :-
    findall([Next,Current|Rest],
            (connected(Current, Next),
             \+ member(Next, [Current|Rest])),
            NewRoutes),
    append(Others, NewRoutes, Queue),
    travel(Queue, Goal, Route).
