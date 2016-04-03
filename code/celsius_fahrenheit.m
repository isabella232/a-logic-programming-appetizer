:- module celsius_fahrenheit.

:- interface.

:- import_module float.

:- pred celsius_fahrenheit(float, float).
:- mode celsius_fahrenheit(in, out) is det.
:- mode celsius_fahrenheit(out, in) is det.

:- implementation.

/* Because of floating point arithmetic, we are lying to the compiler here. */
:- pragma promise_equivalent_clauses(celsius_fahrenheit/2).

celsius_fahrenheit(C::out, F::in) :-
  C = 5.0 / 9.0 * (F - 32.0).
celsius_fahrenheit(C::in, F::out) :-
  F = 9.0 / 5.0 * C + 32.0.
