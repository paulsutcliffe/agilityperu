#language: es

Característica: Administracion de los datos de costos en la web

Escenario: Crear Costos
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "INSCRIPCIONES"
  Y hago click en "COSTOS"
  Y hago click en "Crear Costo"
  Y lleno el formulario con los datos de costo
  Cuando presiono "Guardar"
  Entonces debería ver "Costo creado con éxito."

Escenario: Editar Costo
  Dado que existe un costo
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "INSCRIPCIONES"
  Y hago click en "COSTOS"
  Y hago click en "Editar"
  Y lleno "Titulo" con "La organizacion XIV"
  Y lleno "Contenido" con "Contenido"
  Cuando presiono "Guardar"
  Entonces debería ver "El costo ha sido editado."

Escenario: Eliminar Costo
  Dado que existe un costo
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "INSCRIPCIONES"
  Y hago click en "COSTOS"
  Y hago click en "Eliminar"
  Entonces debería ver "El costo ha sido eliminado."
