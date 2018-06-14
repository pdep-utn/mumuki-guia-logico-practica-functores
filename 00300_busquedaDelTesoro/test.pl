 test(destinos_posibles_de_lucy_son_sofia_y_bucarest, set(Destinos==[sofia, bucarest])):-
	destinoPosible(lucy, Destinos).
 
 test(son_interesantes_intermedio_avanzado_y_modoDios, set(Niveles==[intermedio, avanzado])):-
	interesante(Niveles).

 test(son_homogeneos_intermedio_y_modoDios, set(Niveles==[intermedio, modoDios])):-
	homogeneo(Niveles).
