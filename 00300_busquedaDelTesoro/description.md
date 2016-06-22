Se organiza un juego que consiste en ir buscando distintos objetos por el mundo. Cada participante está en un determinado nivel, cada nivel implica ciertas tareas, cada tarea consiste en buscar un objeto en una ciudad.

Representamos las tareas como functores buscar(Cosa,Ciudad), y definimos el predicado tarea/2 de esta forma:

```prolog 
 tarea(basico,buscar(libro,jartum)).
 tarea(basico,buscar(arbol,patras)).
 tarea(basico,buscar(roca,telaviv)).
 tarea(intermedio,buscar(arbol,sofia)).
 tarea(intermedio,buscar(arbol,bucarest)).
 tarea(avanzado,buscar(perro,bari)).
 tarea(avanzado,buscar(flor,belgrado)).
```

Para definir en qué nivel está cada participante se define el predicado nivelActual/2, de esta forma:

```prolog
 nivelActual(pepe,basico).
 nivelActual(lucy,intermedio).
 nivelActual(juancho,avanzado).
```
 
 También vamos a necesitar saber qué idioma se habla en cada ciudad, qué idiomas habla cada persona, y el capital actual de cada persona. Esto lo representamos con los predicados `idioma/2`, `habla/2` y `capital/2`:

```prolog 
 idioma(alejandria,arabe).
 idioma(jartum,arabe).
 idioma(belgrado,serbio).
 %...

 habla(pepe,bulgaro).
 habla(pepe,italiano).
 habla(juancho,arabe).
 habla(lucy,griego).
 %...

 capital(pepe,1200).
 capital(lucy,3000).
 capital(juancho,500).
```

## `destinoPosible/2`

Relaciona personas con ciudades; una ciudad es destino posible para una persona, si debe buscar algo allí dado su nivel.

## `idiomaUtil/2`

Relaciona personas con idiomas: un idioma es útil para una persona si en alguno de los destinos posibles para el nivel en el que se encuentra se habla el idioma (no implica que la persona sepa el idioma).

## `excelenteCompaniero/2`

Relaciona dos participantes. El segundo es un excelente compañero para el primero si habla los idiomas de todos los destinos posibles del primero.
Asegurar que el predicado sea inversible para los dos parámetros.

## `interesante/1`

Un nivel es interesante si se cumple alguna de estas condiciones:

* Todas las cosas posibles para buscar en ese nivel están vivas (las cosas vivas que conocemos son: árbol, perro y flor).
* En alguno de los destinos posibles para el nivel se habla italiano.

Asegurar que el predicado sea inversible.

## `complicado/1`

Un participante está complicado si: no habla ninguno de los idiomas de los destinos posibles para su nivel actual; está en un nivel distinto de básico y su capital es menor a 1500, o está en el nivel básico y su capital es menor a 500.

## `homogeneo/1`

Un nivel es homogéneo si en todas las opciones la cosa a buscar es la misma.
Asegurar que el predicado sea inversible.