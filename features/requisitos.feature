#language: es

Característica: Administracion de los requisitos en la web

Escenario: Crear Requisito
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "INFORMACIÓN"
  Y hago click en "REQUISITOS PARA CANES"
  Y hago click en "Crear Requisito"
  Y lleno el formulario con los datos de requisito
  Cuando presiono "Guardar"
  Entonces debería ver "Requisito creado con éxito."

Escenario: Editar Requisito
  Dado que existe un requisito
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "INFORMACIÓN"
  Y hago click en "REQUISITOS PARA CANES"
  Y hago click en "Editar"
  Y lleno "Pais" con "Pais"
  Y lleno "Contenido" con "Contenido"
  Cuando presiono "Guardar"
  Entonces debería ver "El requisito ha sido editado."

Escenario: Eliminar Requisito
  Dado que existe un requisito
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "INFORMACIÓN"
  Y hago click en "REQUISITOS PARA CANES"
  Y hago click en "Eliminar"
  Entonces debería ver "El requisito ha sido eliminado."
