 tarea(basico,buscar(libro,jartum)).
 tarea(basico,buscar(arbol,patras)).
 tarea(basico,buscar(roca,telaviv)).
 tarea(intermedio,buscar(arbol,sofia)).
 tarea(intermedio,buscar(arbol,bucarest)).
 tarea(avanzado,buscar(perro,bari)).
 tarea(avanzado,buscar(flor,belgrado)).
 tarea(modoDios,buscar(mujeres,utn)).
 
 nivelActual(pepe,basico).
 nivelActual(lucy,intermedio).
 nivelActual(juancho,avanzado).
 nivelActual(gasti, modoDios).

 idioma(alejandria,arabe).
 idioma(jartum,arabe).
 idioma(patras,griego).
 idioma(telaviv,hebreo).
 idioma(sofia,bulgaro).
 idioma(bari,italiano).
 idioma(bucarest,rumano).
 idioma(belgrado,serbio).
 idioma(utn,nerd).

 habla(pepe,bulgaro).
 habla(pepe,griego).
 habla(pepe,italiano).
 habla(juancho,arabe).
 habla(juancho,griego).
 habla(juancho,hebreo).
 habla(lucy,griego).
 habla(gasti,nerd).

 capital(pepe,1200).
 capital(lucy,3000).
 capital(juancho,500).
 capital(gasti, 20000).
 
  test(destinos_posibles_de_lucy_son_sofia_y_bucarest, set(Destinos==[sofia, bucarest])):-
	destinoPosible(lucy, Destinos).
 
 test(idiomas_utiles_de_juancho_son_italiano_y_serbio, set(Idiomas==[italiano, serbio])):-
	idiomaUtil(juancho, Idiomas).
 
 test(juancho_es_excelente_companiero_de_pepe, nondet):-
	excelenteCompaniero(Companiero, Participante),
	assertion(Companiero == juancho),
	assertion(Participante == pepe).
 
 test(lucy_no_es_excelente_companiera_de_gasti, fail):-
	excelenteCompaniero(lucy, gasti).
 
 test(son_interesantes_intermedio_avanzado_y_modoDios, set(Niveles==[intermedio, avanzado, modoDios])):-
	interesante(Niveles).

 test(son_homogeneos_intermedio_y_modoDios, set(Niveles==[intermedio, modoDios])):-
	homogeneo(Niveles).
