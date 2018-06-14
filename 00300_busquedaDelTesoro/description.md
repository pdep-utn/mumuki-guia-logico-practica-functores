Se organiza un juego que consiste en ir buscando distintos objetos por el mundo. Cada participante está en un determinado nivel, cada nivel implica ciertas tareas, cada tarea consiste en buscar un objeto en una ciudad.

Representamos las tareas como functores buscar(Cosa, Ciudad), y definimos el predicado tarea/2 de esta forma:

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
 
También vamos a necesitar saber qué idioma se habla en cada ciudad. Esto lo representamos con el predicado `idioma/2`:

```prolog 
 idioma(alejandria,arabe).
 idioma(jartum,arabe).
 idioma(belgrado,serbio).
 %...
```

Desarrollar los siguientes predicados de modo que sean inversibles:

## `destinoPosible/2`

Relaciona personas con ciudades; una ciudad es destino posible para una persona, si debe buscar algo allí dado su nivel.

## `interesante/1`

Un nivel es interesante si se cumple alguna de estas condiciones:

* Todas las cosas posibles para buscar en ese nivel están vivas (las cosas vivas que conocemos son: árbol, perro y flor).
* En alguno de los destinos posibles para el nivel se habla italiano.

## `homogeneo/1`

Un nivel es homogéneo si en todas las tareas la cosa a buscar es la misma.