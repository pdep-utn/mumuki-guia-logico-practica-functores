tarea(login, 80, programador).
tarea(cacheDistribuida, 120, arquitecto).
tarea(pruebasPerformance, 100, tester).
tarea(tuning, 30, arquitecto).
tarea(siesta, 2, programador).

precede(login, siesta).
precede(cacheDistribuida, pruebasPerformance).
precede(pruebasPerformance, tuning).

realizada(login).

test(cacheDistribuida_y_pruebasPerformance_son_anteriores_a_tuning, set(Anteriores == [cacheDistribuida, pruebasPerformance])):-
	anterior(Anteriores, tuning).
	
test(login_es_anterior_a_siesta, nondet):-
	anterior(login, siesta).

test(pruebasPerformance_es_tarea_simple, nondet):-
	simple(pruebasPerformance).
	
test(tuning_es_tarea_simple):-
	simple(tuning).
	
test(login_es_tarea_simple, nondet):-
	simple(login).

test(cacheDistribuida_no_es_tarea_simple, fail):-
	simple(cacheDistribuida).

test(pruebasPerformance_es_tarea_de_riesgo):-
	riesgo(pruebasPerformance).
	
test(login_no_es_tarea_de_riesgo, fail):-
	riesgo(login).

test(siesta_no_es_tarea_de_riesgo, fail):-
	riesgo(siesta).

test(para_tuning_me_faltan_pruebasPerformance_y_cacheDistribuida, set(Tarea == [pruebasPerformance, cacheDistribuida])):-
	meFaltaPara(tuning, Tarea).
	
test(para_la_siesta_no_faltan_mas_tareas):-
	not(meFaltaPara(siesta, _)).

test(puedo_hacer_siesta_y_cacheDistribuida, set(Tareas == [siesta, cacheDistribuida])):-
	puedoHacer(Tareas).