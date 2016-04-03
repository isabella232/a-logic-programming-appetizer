:- module family.

:- interface.

:- pred mother(string, string).
:- mode mother(in, in) is semidet.
:- mode mother(in, out) is semidet.
:- mode mother(out, in) is nondet.

:- pred father(string, string).
:- mode father(in, in) is semidet.
:- mode father(in, out) is semidet.
:- mode father(out, in) is nondet.

:- pred parent(string, string).
:- mode parent(in, in) is semidet.
:- mode parent(in, out) is nondet.
:- mode parent(out, in) is nondet.

:- pred grandparent(string, string).
:- mode grandparent(in, in) is semidet.
:- mode grandparent(in, out) is nondet.
:- mode grandparent(out, in) is nondet.

:- implementation.

mother("bart", "marge").
mother("lisa", "marge").
mother("maggie", "marge").

father("bart", "homer").
father("lisa", "homer").
father("maggie", "homer").
father("homer", "abe").

parent(Child, Parent) :-
    mother(Child, Parent).
parent(Child, Parent) :-
    father(Child, Parent).

grandparent(Child, Grandparent) :-
    parent(Child, Parent), 
    parent(Parent, Grandparent).
