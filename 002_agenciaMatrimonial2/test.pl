preferencias(ana, [luis, juan, pedro]).
preferencias(nora, [juan, pedro, luis]).
preferencias(marta, [pedro, luis, juan]).
preferencias(luis, [ana, nora, marta]).
preferencias(juan, [marta, ana, nora]).
preferencias(pedro, [nora, marta, ana]).

test(ana_y_luis_forman_pareja):-
	parejas([ana],[luis], pareja(ana,luis)).

test(grupo_de_mujeres_y_varones_devuelve_toda_combinacion, set(Parejas == [pareja(ana, luis), pareja(ana, juan), pareja(ana, pedro),
 pareja(marta, luis), pareja(marta, juan), pareja(marta, pedro), pareja(nora, luis), pareja(nora, juan), pareja(nora, pedro)])):-
	parejas([ana, marta, nora], [luis, juan, pedro], Parejas).

test(grupo_de_varones_sin_mujeres_no_cumple, fail):-
	parejas([],[luis, juan], _).

test(juan_esta_insatisfecho_porque_pedro_esta_con_marta, nondet):-
	insatisfecho(juan, [pareja(ana, juan), pareja(marta, pedro)]).

test(pedro_no_esta_insatisfecho_con_nora, fail):-
	insatisfecho(pedro, [pareja(ana, luis), pareja(nora, pedro)]).
	
test(ana_no_esta_insatisfecha_por_ser_unica_pareja, fail):-
	insatisfecho(ana, [pareja(ana, luis)]).
	
test(ana_luis_y_pedro_nora_son_parejas_estables):-
	estable([pareja(ana,luis), pareja(nora,pedro)]).

test(ana_luis_y_juan_nora_y_pedro_marta_no_son_parejas_estables, fail):-
	estable([pareja(ana,luis), pareja(nora,juan), pareja(marta,pedro)]).
	
test(conjunto_vacio_es_estable):-
	estable([]).

