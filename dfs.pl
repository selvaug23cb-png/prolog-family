connected(s,t).
connected(s,u).
connected(t,v).
connected(t,w).
connected(u,x).
connected(u,y).
connected(v,z).
connected(w,m).
connected(x,n).
connected(y,p).
connected(n,q).
connected(p,r).



dfs(Source, Destination, Route) :-
    find_path(Source, Destination, [Source], TempRoute),
    reverse(TempRoute, Route).

find_path(Destination, Destination, Route, Route).

find_path(Current, Destination, Visited, Route) :-
    connected(Current, NextNode),
    \+ member(NextNode, Visited),
    find_path(NextNode, Destination,
              [NextNode|Visited], Route).
