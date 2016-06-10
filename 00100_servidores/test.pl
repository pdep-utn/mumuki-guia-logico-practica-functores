servidor(ps1, fila1, 1).
servidor(ps2, fila1, 2).
servidor(was1, fila2, 1).
servidor(was1_2, fila2, 4).
servidor(fs_x48, fila2, 1).
esCliente(ps1,fs_x48).
esCliente(was1,fs_x48).

test(ps1_y_ps2_requieren_atencion_inmediata_por_corte_de_luz_fila1, set(Server == [ps1, ps2])):-
	requiereAtencionInmediata(Server, corteDeLuz(fila1)).

test(was1_no_requiere_atencion_inmediata_por_corte_de_luz_fila1, nondet):-
	requiereAtencionInmediata(Server, corteDeLuz(fila1)),
	assertion(Server \= was1).

test(ps2_requiere_atencion_inmediata_por_cuelgue):-
	requiereAtencionInmediata(ps2, cuelgue(ps2)).

test(ps2_no_requiere_atencion_normal_por_cuelgue, fail):-
	requiereAtencionNormal(ps2, cuelgue(ps2)).
	
test(was1_2_requiere_atencion_normal_por_cuelgue):-
	requiereAtencionNormal(was1_2, cuelgue(was1_2)).

test(was1_2_no_requiere_atencion_inmediata_por_cuelgue, fail):-
	requiereAtencionInmediata(was1_2, cuelgue(was1_2)).

test(ps2_requiere_atencion_normal_por_rebooteo, nondet):-
	requiereAtencionNormal(ps2, rebooteo(ps2)).

test(was1_y_ps1_requieren_atencion_normal_por_rebooteo_de_fs_x48, set(Server == [was1, ps1, fs_x48])):-
	requiereAtencionNormal(Server, rebooteo(fs_x48)).