:- module mymax_test.

:- interface.

:- import_module io.

:- pred main(io::di, io::uo) is det.

:- implementation.

:- import_module list.
:- import_module mymax.
:- import_module string.

main(!IO) :-
  format("The max of 5 and 7 is: %i\n", [i(mymax(5, 7))], !IO),
  format("The max of 7 and 5 is: %i\n", [i(mymax(7, 5))], !IO).
