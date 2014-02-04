#language: es

Característica: Administracion de los datos del programa en la web

Escenario: Crear programa
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "COMPETENCIA"
  Y hago click en "PROGRAMA"
  Y hago click en "Crear Programa"
  Y lleno el formulario con los datos del programa
  Cuando presiono "Guardar"
  Entonces debería ver "Programa creado con éxito."

Escenario: Editar Programa
  Dado que existe un programa
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "COMPETENCIA"
  Y hago click en "PROGRAMA"
  Y hago click en "Editar"
  Y lleno "Titulo" con "La organizacion XIV"
  Y lleno "Contenido" con "Contenido"
  Cuando presiono "Guardar"
  Entonces debería ver "El programa ha sido editado."

Escenario: Eliminar Programa
  Dado que existe un programa
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "INFORMACIÓN"
  Y hago click en "PROGRAMA"
  Y hago click en "Eliminar"
  Entonces debería ver "El programa ha sido eliminado."
