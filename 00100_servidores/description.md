En una empresa multinacional se da servicio de outsourcing a los servidores de varias empresas.

De cada servidor se conoce su ubicación en una fila de servidores del Centro de Cómputos, y qué criticidad tiene asociada en el contrato de outsourcing (la criticidad va del 1 al 4 y define qué tan rápido se tiene que dar solución a los problemas que se presentan en el server). Los datos de los servidores se encuentran modelados así:

```prolog
servidor(ps1, fila1, 1).
servidor(ps2, fila1, 2).
servidor(was1, fila2, 1).
servidor(was1_2, fila2, 4).
servidor(fs_x48, fila2, 1).
esCliente(ps1,fs_x48). % acá dice que el servidor PS1 es cliente de FS_X48
esCliente(was1,fs_x48). % acá dice que el servidor WAS1 es cliente de FS_X48
```

En el Centro de Monitoreo de la empresa se reciben las alertas de los problemas que acontece en el Centro de Cómputos. Los eventos que se informa son modelados con **functores**:

* cortes de luz que afectan toda una fila de servidores, por ej `corteDeLuz(fila2)`
* rebooteos de servers, por ej `rebooteo(ps2)`
* "cuelgues" de aplicaciones en un server, por ej `cuelgue(ps2)`

Escribir las cláusulas que hagan falta para definir los predicados `requiereAtencionNormal/2` y `requiereAtencionInmediata/2`, sabiendo que:

* ante un corte de luz, todos los servidores de la fila requieren atención inmediata
* ante un rebooteo de server, el server afectado y los otros servidores que sean clientes de ese server
requieren atención normal.
* ante un cuelgue de aplicación, el servidor afectado requiere atención inmediata si es crítico (criticidad 1 y 2), o atención normal si el servidor no es crítico (criticidad 3 y 4). Ningún otro servidor requiere atención.

Para los dos predicados, el primer argumento es el servidor del cual se quiere saber si requiere o no atención, y el segundo es un evento de los mencionados anteriormente.

Lograr para ambos predicados la inversibilidad necesaria para que pueda consultarse qué servidores requieren atención dado un evento.

> En este ejemplo:
> 
> * ante un corte de luz en la fila1, los servidores PS1 y PS2 requieren atención inmediata.
> * ante un rebooteo de FS_X48, tanto ese server como PS1 y WAS1 requieren atención normal.
> * ante un cuelgue en PS2, ese server requiere atención inmediata y nadie más.
> * ante un cuelgue en WAS1_2, ese server requiere atención normal y nadie más.
> 