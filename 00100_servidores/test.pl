test(ps1_y_ps2_requieren_atencion_inmediata_por_corte_de_luz_fila1, set(Server == [ps1, ps2])):-
	requiereAtencion(Server, corteDeLuz(fila1), inmediata).

test(was1_no_requiere_atencion_inmediata_por_corte_de_luz_fila1, nondet):-
	requiereAtencion(Server, corteDeLuz(fila1), inmediata),
	assertion(Server \= was1).

test(ps2_requiere_atencion_inmediata_por_cuelgue):-
	requiereAtencion(ps2, cuelgue(ps2), inmediata).

test(ps1_no_requiere_atencion_inmediata_por_cuelgue_de_ps2, fail):-
	requiereAtencion(ps1, cuelgue(ps2), inmediata).
	
test(ps2_no_requiere_atencion_normal_por_cuelgue, fail):-
	requiereAtencion(ps2, cuelgue(ps2), normal).
	
test(was1_2_requiere_atencion_normal_por_cuelgue):-
	requiereAtencion(was1_2, cuelgue(was1_2), normal).

test(was1_2_no_requiere_atencion_inmediata_por_cuelgue, fail):-
	requiereAtencion(was1_2, cuelgue(was1_2), inmediata).

test(ps2_requiere_atencion_normal_por_rebooteo, nondet):-
	requiereAtencion(ps2, rebooteo(ps2), normal).

test(was1_y_ps1_requieren_atencion_normal_por_rebooteo_de_fs_x48, set(Server == [was1, ps1, fs_x48])):-
	requiereAtencion(Server, rebooteo(fs_x48), normal).