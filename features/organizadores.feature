#language: es

Característica: Administracion de los datos de los organizadores en la web

Escenario: Crear Organizador
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "COMPETENCIA"
  Y hago click en "ORGANIZACIÓN"
  Y hago click en "Crear Organizador"
  Y lleno el formulario con los datos del organizador
  Cuando presiono "Guardar"
  Entonces debería ver "Organizador creado con éxito."

Escenario: Editar Organizador
  Dado que existe un organizador
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "COMPETENCIA"
  Y hago click en "ORGANIZACIÓN"
  Y hago click en "Editar"
  Y lleno "Titulo" con "La organizacion XIV"
  Y lleno "Contenido" con "Contenido"
  Cuando presiono "Guardar"
  Entonces debería ver "El organizador ha sido editado."

Escenario: Eliminar Organizador
  Dado que existe un organizador
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "COMPETENCIA"
  Y hago click en "ORGANIZACIÓN"
  Y hago click en "Eliminar"
  Entonces debería ver "El organizador ha sido eliminado."
