#language: es

Característica: Administracion de los datos de la organizacion en la web

Escenario: Editar organizacion
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Organización"
  Y hago click en "Editar"
  Y lleno "titulo" con "La organizacion XIV"
  Y lleno "Contenido" con "Contenido"
  Cuando presiono "Guardar"
  Entonces debería ver "los datos de organización han sido editado."

