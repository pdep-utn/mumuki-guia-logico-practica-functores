Continuando el ejercicio anterior, tenemos registrados los eventos que fueron sucedieron a lo largo de año de esta forma:

```prolog
ocurrio(cuelgue(ps1), enero).
ocurrio(cuelgue(ps2), enero).
ocurrio(cuelgue(ps2), febrero).
ocurrio(corteDeLuz(fila1), febrero).
ocurrio(corteDeLuz(fila2), marzo).
ocurrio(rebooteo(fs_x48), marzo).
ocurrio(cuelgue(ps2), marzo).
% ... etc
```

Queremos saber si un mes fue `complicado/1` que se cumple si todos los servidores se vieron afectados por algún evento de ese mes. Un server se vio afectado por el evento si requirió atención de cualquier tipo (normal o inmediata).
