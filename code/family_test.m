:- module family_test.

:- interface.

:- import_module io.

:- pred main(io::di, io::uo) is det.

:- implementation.

:- import_module family.
:- import_module list.
:- import_module solutions.
:- import_module string.

main(!IO) :-
    say("The grandchildren of abe are:", !IO),
    aggregate(
            (pred(X::out) is nondet :- grandparent(X, "abe")),
            say,
            !IO).

:- pred say(T::in, io::di, io::uo) is det.
say(In, !IO) :-
  print(In, !IO),
  print("\n", !IO).
