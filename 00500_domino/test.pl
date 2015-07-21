tieneFicha(carlos,ficha(0,4)).
tieneFicha(carlos,ficha(0,6)).
tieneFicha(carlos,ficha(5,1)).
tieneFicha(german,ficha(5,0)).
tieneFicha(miguel,ficha(3,2)).
tieneFicha(miguel,ficha(3,3)).
tieneFicha(juan,ficha(1,6)).
estado([ficha(0,1),ficha(1,4),ficha(4,2),ficha(2,2),ficha(2,5)]).

test(miguel_y_juan_ceden_turno, set(Jugadores==[miguel, juan])):-
	cedeTurno(Jugadores).