A Logic Programming Appetizer
=============================

Talk given by [Kilian Evang](https://kilian.evang.name/) at the
[10th Functional Groningen Meetup](http://www.meetup.com/Functional-Groningen/events/180886102/).

Browse the example code: https://github.com/texttheater/a-logic-programming-appetizer/tree/master/code

View the slides: https://texttheater.github.io/a-logic-programming-appetizer

Abstract
--------

Functional programming and logic programming are two major sub-paradigms of
declarative programming. 

Logic programming uses predicates, which can be seen as a generalization of
functions: firstly, a (pure) function has exactly one solution for a given
input while a predicate can have 0, 1 or more. Backtracking to explore a search
space of solutions is built right into logic programming languages and requires
next to no boilerplate code. Secondly, while functions distinguish strictly
between arguments (input) and return value (output), predicates can work in two
or more "directions" (modes). 

This added expressiveness of predicates enables very concise and readable code
reminiscent of mathematical logic in some situations, as I will show using
Prolog code examples. On the other hand, in some areas Prolog fails to
reconcile purity and efficiency, and unwanted non-determinism and
inconsistencies between different modes creep in easily. A pure
logic/functional programming language called Mercury addresses these problems
by adding compile-time type-checking, compile-time mode-checking, compile-time
determinism-checking and functional syntax for single-mode predicates. I
suggest that Mercury is the perfect marriage between functional and logic
programming.
