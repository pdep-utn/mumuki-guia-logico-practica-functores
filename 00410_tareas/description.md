Para un proyecto de desarrollo de software se tiene una base de conocimientos con los siguientes hechos:

```prolog
tarea(login, 80, programador). % La tarea login tarda 80 horas y debe ser realizada por el programador
tarea(cacheDistribuida, 120, arquitecto).
tarea(pruebasPerformance, 100, tester).
tarea(tuning, 30, arquitecto).

precede(cacheDistribuida, pruebasPerformance). % La tarea pruebasDePerformance solo puede comenzar una vez que cacheDistribuida finalice
precede(pruebasPerformance, tuning).

realizada(login). % La tarea login ya se realizo
```

## `anterior/2`

Relaciona dos tareas A y B si estas deben realizarse en un orden específico, ya sea por una dependencia directa o indirecta.

```prolog
?- anterior(T, tuning).
T = pruebasPerformance; (-> dependencia directa, porque pruebasPerformance precede a tuning)
T = cacheDistribuida; (-> dependencia indirecta, a través de pruebasPerformance)
```

## `simple/1`

Las tareas que realizan los programadores y testers son consideradas simples. También se consideran simples todas las tareas que toman menos de una semana (40 horas).

## `riesgo/1`

Consideramos como riesgosas todas las tareas de 40 o más horas que aún no han sido realizadas.

## `meFaltanPara/2`

Relaciona una tarea con la lista de todas las tareas que deben ser terminadas antes de poder comenzar con la misma y no han sido realizadas.

```prolog
?- meFaltanPara(tuning, Faltantes).
Faltantes = [pruebasPerformance, cacheDistribuida].
```

## `puedoHacer/1`

Indica si una tarea puede ser realizada. Usar forall/2 y debe garantizar inversibilidad.
Una tarea puede ser realizada cuando no fue realizada ya y sus precedentes han sido realizadas.