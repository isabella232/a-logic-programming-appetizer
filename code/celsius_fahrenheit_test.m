:- module celsius_fahrenheit_test.

:- interface.

:- import_module io.

:- pred main(io::di, io::uo) is det.

:- implementation.

:- import_module celsius_fahrenheit.
:- import_module list.
:- import_module string.

main(!IO) :-
    celsius_fahrenheit(0.0, F),
    format("0°C is %f°F.\n", [f(F)], !IO),
    celsius_fahrenheit(C, 100.0),
    format("100°F is %f°C.\n", [f(C)], !IO).
