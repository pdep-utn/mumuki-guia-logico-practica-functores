El juego usual del dominó tiene 28 fichas diferentes. Cada ficha es rectangular y tiene grabado en cada extremo un número de puntos entre 0 y 6. P.ej., estas son algunas fichas:
 
 | 0 | 1 | (ficha 1)
 | 1 | 2 | (ficha 2)
 | 3 | 6 | (ficha 3)
 
Todas las fichas son distintas entre sí.

Siguendo las reglas del juego, las fichas se colocan formando una cadena de tal manera que cada par de fichas consecutivas tienen iguales números correspondientes a los dos extremos que se tocan. P.ej. esto podría ser el estado del juego en un momento

 | 0 | 1 || 1 | 4 || 4 | 2 || 2 | 2 || 2 | 5 | 
 
Cada jugador posee un conjunto de piezas, las cuales utiliza por turno para ir agregando a la cadena de piezas del juego; puede agregar su ficha en cualquiera de los dos extremos. P.ej. en el ejemplo anterior las siguientes fichas se pueden agregar:
 
 | 0 | 4 | (por la izquierda)
 | 5 | 1 | (por la derecha)
 | 5 | 0 | (por cualquiera de los dos lados)
 
Cuando un jugador no puede agregar ninguna pieza, éste debe ceder su turno.

Lo que sigue es parte de la base de conocimiento:

```prolog
tieneFicha(carlos,ficha(0,4)).
tieneFicha(carlos,ficha(0,6)).
tieneFicha(carlos,ficha(5,1)).
tieneFicha(german,ficha(5,0)).
tieneFicha(miguel,ficha(3,2)).
tieneFicha(miguel,ficha(3,3)).
tieneFicha(juan,ficha(1,6)).
estado([ficha(0,1),ficha(1,4),ficha(4,2),ficha(2,2),ficha(2,5)]).
```

## `cedeTurno/1`

Se verifica para los jugadores que deben ceder su turno. Lograr que este predicado sea inversible.
En el ejemplo, si consulto (ignorando repetidos, si los hubiere):

```prolog
?- cedeTurno(Jugador)
Jugador = miguel
Jugador = juan
```