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
  - Empleado (id-empleado)
  - Tipo (administrador, supervisor)
  - Todos los campos son requeridos
  - Reset de password para usuarios
  
- Catálogo de empleados (CRUD)
  - Número de trabajador
  - Nombre
  - Email
  - Departamento
  - Clave (encriptada)
  - Todos los campos son requeridos

- Catálogo de almacenes (CRUD)
  - Código de identificación
  - Nombre
  - Ubicación
  - Todos los campos son requeridos
  
- Catálogo de inventario (CRUD)
  - Número de inventario
  - Nombre
  - Almacen (id-almacen)
  - Estado (alta, baja, etc.)
  
- Eventos (préstamos)
  - Salida
    - Artículo. id-artículo o número de inventario
    - Usuario. id del usuario (administrador o supervisor) que realiza la entrega del artículo (salida de almacen)
    - Empleado. Id del empleado que se queda con el resguardo del artículo durante el periodo del préstamo
    - Fecha y hora de salida en la que se realiza la salida de almacen
    - Fecha y hora autorizada para  regresar a almacen el artículo
    - Observaciones. Observaciones al momento de realizar la salida de almacen
  - Entrada
    - Salida. Id del evento de salida
    - Usuario. id del usuario (administrador o supervisor) que recibe el artículo (entrada a almacen)
    - Fecha y hora de entrega
    - Observaciones. Observaciones al momento de realizar la entrada a almacen.
    
- Backend API
 - Eventos. Funciones necesarias para entrada y salida de artículos
 - Usuarios. Solo consulta o autenticación
 - Almacenes. Solo consultas
 - Inventario. Solo consultas

  
