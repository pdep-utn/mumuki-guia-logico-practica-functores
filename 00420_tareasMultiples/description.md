En el conocido proyecto de desarrollo de software para poder designar horas de trabajo de varios roles distintos a una misma tarea se define el siguiente hecho `tarea/2`:

```prolog
tarea(login, [trabajo(80, programador)]).
tarea(cacheDistribuida, [trabajo(40, arquitecto), trabajo(80, diseniador)]).
tarea(pruebasPerformance, [trabajo(100, tester), trabajo(20, analista)]).
tarea(tuning, [trabajo(40, arquitecto), trabajo(20, tester)]).
```

De esta forma por ejemplo para la tarea cacheDistribuida se necesitan 40 horas de un arquitecto y 80 horas de un diseñador.

## `muchoTesting/1`

Indica si una tarea tiene más de 40 horas de testing, por ejemplo:

```prolog
?- muchoTesting(pruebasPerformance).
Yes.
?- muchoTesting(tuning).
No. (-> menos de 40 horas de testing).
?- muchoTesting(login).
No. (-> no tiene horas de testing planificadas). 
```