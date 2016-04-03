% greeting(+Gender, +FirstName, +LastName, -Greeting) is det
greeting(_, FirstName, LastName, Greeting) :-
  is_friend(FirstName, LastName),
  !,
  format(string(Greeting), 'Hi, ~w!', [FirstName]).
greeting(male, _, LastName, Greeting) :-
  !,
  format(string(Greeting), 'Hello, Mr. ~w!', [LastName]).
greeting(female, _, LastName, Greeting) :-
  !,
  format(string(Greeting), 'Hello, Ms. ~w!', [LastName]).
greeting(_, FirstName, LastName, Greeting) :-
  format(string(Greeting), 'Hello, ~w ~w!', [FirstName, LastName]).

is_friend('Gideon', 'de Kok').
is_friend('Malik', 'Ibheis').
is_friend('Ni', 'Zeng').
