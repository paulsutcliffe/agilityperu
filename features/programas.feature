#language: es

Característica: Administracion de los datos del programa en la web

Escenario: Editar programa
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Programa"
  Y hago click en "Editar"
  Y lleno "titulo" con "Programa"
  Y lleno "Contenido" con "Contenido"
  Cuando presiono "Guardar"
  Entonces debería ver "los datos del programa han sido editado."

