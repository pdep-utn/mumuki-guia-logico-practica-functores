La agencia matrimonial del ejercicio "Agencia Matrimonial" de la práctica 1 arma grupos de mujeres y varones en igual cantidad. Para cada persona del grupo se determina, con los métodos científicos que usa la agencia, el orden de preferencia de las personas del otro sexo.

Damos un ejemplo de grupo:

* mujeres: Ana, Nora y Marta
* varones: Luis, Juan y Pedro

```prolog
preferencias(ana, [luis, juan, pedro]). % Ana prefiere a Luis antes que a Juan y a Juan antes que a Pedro.
preferencias(nora, [juan, pedro, luis]).
preferencias(marta, [pedro, luis, juan]).
preferencias(luis, [ana, nora, marta]).
preferencias(juan, [marta, ana, nora]).
preferencias(pedro, [nora, marta, ana]).
```

La agencia quiere armar parejas que incluyan a todas las personas de un grupo, y tal que el conjunto de parejas armadas sea estables.

Un conjunto de parejas es estable si todas sus parejas son estables en el contexto del conjunto.

Una pareja es inestable en un contexto si alguno de sus dos integrantes quiere dejar al otro. Una persona A quiere dejar a otra B si existe una tercera C tal que:
 
* A prefiere a C antes que a B, y
* C prefiere a A antes que a su pareja (la que tiene asignada en el contexto).

**Ejemplo:** el conjunto de Ana-Pedro, Nora-Luis, y Marta-Juan es inestable porque Ana quiere dejar a Pedro, dado que Ana prefiere a Luis antes que a Pedro, y Luis prefiere a Ana antes que a Nora (la pareja de Luis en el conjunto).

Se pide:

## `parejas/3`

Relaciona un conjunto de mujeres y otro de varones con cada posible pareja (una por consulta). A las parejas se las representa como un functor `pareja(Mujer, Hombre)`.

## `insatisfecho/2`

Se verifica para una persona y un conjunto de parejas si la persona quiere dejar a su pareja asignada en el contexto del conjunto.
P.ej. Ana sí está insatisfecha respecto del conjunto de parejas del ejemplo.

## `estable/1`

Indica si un conjunto de parejas es estable o no. Hacerlo de forma tal de garantizar que sea inversible.