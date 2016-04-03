max(A, B, Max) :-
  A >= B,
  !,
  A = Max.
max(_A, B, B).
