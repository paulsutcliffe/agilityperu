#language: es

Característica: Administracion de los datos del reglamento en la web

Escenario: Editar reglamento
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Reglamento"
  Y hago click en "Editar"
  Y lleno "titulo" con "Reglamento"
  Y lleno "Contenido" con "Contenido"
  Cuando presiono "Guardar"
  Entonces debería ver "los datos de reglamento han sido editado."

