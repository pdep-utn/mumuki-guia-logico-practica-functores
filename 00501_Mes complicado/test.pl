test('no es cierto que complicado(enero)'):-
  \+ complicado(enero).
  
test('no es cierto que complicado(febrero)'):-
  \+ complicado(febrero).
  
test('es cierto que complicado(marzo)'):-
  complicado(marzo).

test('es cierto que complicado(abril)'):-
  complicado(abril).
  
test('es cierto que complicado(mayo)'):-
  complicado(mayo).
  
test('complicado es inversible', set(Mes == [marzo, abril, mayo])):-
  complicado(Mes).