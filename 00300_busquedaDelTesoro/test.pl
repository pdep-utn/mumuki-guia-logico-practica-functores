 test(destinos_posibles_de_lucy_son_sofia_y_bucarest, set(Destinos==[sofia, bucarest])):-
	destinoPosible(lucy, Destinos).
 
 test(idiomas_utiles_de_juancho_son_italiano_y_serbio, set(Idiomas==[italiano, serbio])):-
	idiomaUtil(juancho, Idiomas).
 
 test(juancho_es_excelente_companiero_de_pepe, nondet):-
	excelenteCompaniero(Participante, Companiero),
	assertion(Companiero == juancho),
	assertion(Participante == pepe).
 
 test(lucy_no_es_excelente_companiera_de_gasti, fail):-
	excelenteCompaniero(gasti, lucy).
 
 test(son_interesantes_intermedio_avanzado_y_modoDios, set(Niveles==[intermedio, avanzado])):-
	interesante(Niveles).

 test(son_homogeneos_intermedio_y_modoDios, set(Niveles==[intermedio, modoDios])):-
	homogeneo(Niveles).
