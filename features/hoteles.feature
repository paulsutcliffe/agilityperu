#language: es

Característica: Administracion de los hoteles en la web

Escenario: Crear Hotel
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Hotel"
  Y hago click en "Crear Hoteles"
  Y lleno el formulario con los datos del hotel
  Cuando presiono "Guardar"
  Entonces debería ver "Hotel creado con éxito."

Escenario: Editar Hotel
  Dado que existe un hotel
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Hotel"
  Y hago click en "Editar"
  Y lleno "Nombre" con "Nuevo hotel"
  Y lleno "Descripcion" con "Descripcion"
  Cuando presiono "Guardar"
  Entonces debería ver "El hotel ha sido editado."

Escenario: Eliminar Hotel
  Dado que existe un hotel
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Hotel"
  Y hago click en "Eliminar"
  Entonces debería ver "El hotel ha sido eliminado."
