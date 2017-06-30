Nuestra agencia matrimonial sigue recolectando información... Para cada persona registrada en su sistema se determina, con los métodos científicos que usa la agencia, el top 3 de las personas que le interesan.

Esa información la tenemos disponible mediante el predicado preferencia/3 que relaciona a la persona interesada, el orden de preferencia de 1 a 3 y la persona de interés rankeada de esa forma. Por ejemplo:

```prolog
% Ana prefiere a Luis antes que a Juan y a Juan antes que a Pedro.
preferencia(ana, 1,luis).
preferencia(ana, 2, juan).
preferencia(ana, 3, pedro).
preferencia(luis, 1, ana).
preferencia(luis, 2, nora).
preferencia(luis, 3, marta).
preferencia(pedro, 1, ana).
preferencia(juan, 2, ana).
preferencia(milhouse, 1, ana).
...
```

Se pide:
 
## `parejaPosible/2`

Relaciona a una persona con un functor pareja/3 compuesto por las dos personas de la pareja y el grado de compatibilidad entre ambas, el cual se calcula como 6 - el nivel de preferencia de cada persona por la otra.

Si una de las dos personas no está interesada en la otra, no será una pareja posible.

Por ejemplo, las parejas posibles para Ana serían los functores pareja(ana, luis, 4), pareja(ana, juan, 2) y pareja(ana, pedro, 2).

## `mejorPareja/2`

Relaciona a una persona con una pareja posible, de modo que se maximice el grado de compatibilidad. Podría haber más de una, en le caso de que el grado de compatibilidad sea el mismo.

## `seVanAPelear/2`

Relaciona dos parejas posibles compuestas por personas distintas si una de las personas de la primer pareja quiere dejar a la otra por una persona de la otra pareja.

Una persona A quiere dejar a otra B si existe una tercera C tal que:
 
* A prefiere a C antes que a B, y
* C prefiere a A antes que a su pareja (la que tiene asignada en el contexto).
 
**Ejemplo:** entre las parejas Ana-Pedro y Nora-Luis, hay problemas dado que Ana prefiere a Luis antes que a Pedro, y Luis prefiere a Ana antes que a Nora.

Además también será cierto si sólo uno de los integrantes de la primer pareja también integra la segunda, por ejemplo Ana-Pedro y Luis-Ana.

> ¡Atención! Los 3 predicados deberían ser inversibles.