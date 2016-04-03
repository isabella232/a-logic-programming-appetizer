:- module mymax.

:- interface.

:- import_module int.

:- func mymax(int, int) = int.

:- implementation.

mymax(A, B) =
    (  if   A >= B
       then A
       else B
    ).
