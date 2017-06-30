test(ana_y_luis_forman_pareja):-
	parejaPosible(ana, pareja(ana,luis, _)).
	
test(nadie_quiere_a_milhouse, fail):-
  parejaPosible(milhouse, _).
  
test(compatibilidad_ana_juan, true(Compatibilidad == 2)):-
  parejaPosible(ana, pareja(ana, juan, Compatibilidad)).
  
test(parejas_posibles_de_ana, set(Pareja==[pareja(ana, luis, 4), pareja(ana, juan, 2), pareja(ana, pedro, 2)])):-
  parejaPosible(ana,Pareja).
  
test(pueden_ser_aparejados, set(Persona==[ana, luis, juan, pedro, nora, marta])):-
  parejaPosible(Persona, _).
  
test(mejor_pareja_de_ana, set(Pareja == [pareja(ana, luis, 4) ])):-
  mejorPareja(ana, Pareja).
  
test(mejor_pareja_de_ana, set(Pareja == [pareja(ana, luis, 4) ])):-
  mejorPareja(ana, Pareja).
  
test(juan_tiene_muchas_mejores_parejas, set(Pareja == [pareja(juan, marta, 2), pareja(juan, ana, 2), pareja(juan, nora, 2) ])):-
  mejorPareja(juan, Pareja).
  
test(se_pelean_por_enganio):-
  seVanAPelear(pareja(juan, marta, _), pareja(ana, juan, _)).
  
test(se_pelean_por_dejarse):-
  seVanAPelear(pareja(pedro, ana, _), pareja(nora, luis, _)).