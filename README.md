# Control de Almacen


## Requerimientos funcionales
 
Una empresa requiere de una aplicación web para administrar el seguimiento (entrada y salida ó prestamo) de los artículos/materiales que tiene resguardados en sus almacenes.

La aplicación deberá incluir la administración de los catálogos de herramientas, almacenes y empleados y deberá incluir el desarrollo de una API que permita la interacción desde una aplicación móvil desarrollada por un tercero.

El siguiente es un listado **no exahustivo** de requerimientos funcionales:

- Inicio de sesión
  - Número de trabajador y clave
    - Almacen

- Módulo Dashboard
  - Vista de supervisor de almacen
    - Reporte del estado de almacenes (entrada/salida)
    - Préstamo de material (entrada/salida) **solo del material en el que inició su sesión**
    - Administración de los catálogos **solo en el almacen en el que inicio sesión**
  - Vista del administrador del almacen
    - Administración de usuarios del sistema (supervisores)
    - Las mismas que el supervisor de almacen
    
- Catálogo de usuarios del sistema (CRUD)
  - Número de trabajador
  - Nombre
  - Email
  - Departamento
  - Clave (encriptada)
  - Tipo 
 - 
- Automatizar el proceso de entrada y salida de herramientas
- Administrar un catálogo de herramientas
- Administrar un catálogo de empleados
- Administrar un ctálogo de almacenes
- Mantener un registro/reportes de los prestamos de materiales del almacen (entrada/salida)



