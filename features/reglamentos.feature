#language: es

Característica: Administracion de los datos del reglamento en la web

Escenario: Crear Reglamento
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "COMPETENCIA"
  Y hago click en "REGLAMENTO"
  Y hago click en "Crear Reglamento"
  Y lleno el formulario con los datos del reglamento
  Cuando presiono "Guardar"
  Entonces debería ver "Reglamento creado con éxito."

Escenario: Editar Reglamento
  Dado que existe un reglamento
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "COMPETENCIA"
  Y hago click en "REGLAMENTO"
  Y hago click en "Editar"
  Y lleno "Titulo" con "La organizacion XIV"
  Y lleno "Contenido" con "Contenido"
  Cuando presiono "Guardar"
  Entonces debería ver "El reglamento ha sido editado."

Escenario: Eliminar Reglamento
  Dado que existe un reglamento
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "COMPETENCIA"
  Y hago click en "REGLAMENTO"
  Y hago click en "Eliminar"
  Entonces debería ver "El reglamento ha sido eliminado."
