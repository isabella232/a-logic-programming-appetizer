mother(bart, marge).
mother(lisa, marge).
mother(maggie, marge).

father(bart, homer).
father(lisa, homer).
father(maggie, homer).
father(homer, abe).

parent(Child, Parent) :-
  mother(Child, Parent).
parent(Child, Parent) :-
  father(Child, Parent).

grandparent(Child, Grandparent) :-
  parent(Child, Parent), 
  parent(Parent, Grandparent).
