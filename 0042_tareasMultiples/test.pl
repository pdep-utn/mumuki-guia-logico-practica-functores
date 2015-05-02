tarea(login, [trabajo(80, programador)]).
tarea(cacheDistribuida, [trabajo(40, arquitecto), trabajo(80, diseniador)]).
tarea(pruebasPerformance, [trabajo(100, tester), trabajo(20, analista)]).
tarea(tuning, [trabajo(40, arquitecto), trabajo(20, tester)]).

test(pruebasPerformance_tiene_mucho_testing):-
	muchoTesting(pruebasPerformance).

test(login_no_tiene_horas_de_testing, fail):-
	muchoTesting(login).

test(tuning_tiene_horas_de_testing_insuficientes, fail):-
	muchoTesting(tuning).