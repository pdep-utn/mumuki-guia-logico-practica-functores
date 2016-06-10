ocurrio(cuelgue(ps1), enero).
ocurrio(cuelgue(ps2), enero).
ocurrio(cuelgue(ps2), febrero).
ocurrio(corteDeLuz(fila1), febrero).
ocurrio(corteDeLuz(fila2), marzo).
ocurrio(rebooteo(fs_x48), marzo).
ocurrio(cuelgue(ps2), marzo).
ocurrio(corteDeLuz(fila1), abril).
ocurrio(corteDeLuz(fila2), abril).
ocurrio(rebooteo(fs_x48), mayo).
ocurrio(rebooteo(ps2), mayo).
ocurrio(cuelgue(was1_2), mayo).

servidor(ps1, fila1, 1).
servidor(ps2, fila1, 2).
servidor(was1, fila2, 1).
servidor(was1_2, fila2, 4).
servidor(fs_x48, fila2, 1).
esCliente(ps1,fs_x48).
esCliente(was1,fs_x48).

requiereAtencion(Server, rebooteo(Server), normal):- servidor(Server, _,_).
requiereAtencion(Cliente, rebooteo(Server), normal):- esCliente(Cliente, Server).
requiereAtencion(Server, cuelgue(Server), normal):-
    servidor(Server,_,_),
    not(esCritico(Server)).

requiereAtencion(Server, cuelgue(Server), inmediata):- esCritico(Server).
requiereAtencion(Server, corteDeLuz(Fila), inmediata):-
    servidor(Server, Fila, _).
    
esCritico(Server):- servidor(Server, _, Criticidad), Criticidad < 3.