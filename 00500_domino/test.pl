test(extremo_izquierdo, set(Ficha == [ficha(0,1)])):-
  extremoIzquierdo(Ficha).
test(extremo_derecho, set(Ficha == [ficha(2,5)])):-
  extremoDerecho(Ficha).

test(miguel_y_juan_ceden_turno, set(Jugadores==[miguel, juan])):-
	cedeTurno(Jugadores).