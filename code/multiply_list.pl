multiply_list([], 1).
multiply_list([First|Rest], Product) :-
  multiply_list(Rest, Product0),
  Product is First * Product.
