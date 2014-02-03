#language: es

Característica: Administracion de los auspiciadores en la web

Escenario: Crear Auspiciador
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Auspiciador"
  Y hago click en "Crear Auspiciador"
  Y lleno el formulario con los datos del auspiciador
  Cuando presiono "Guardar"
  Entonces debería ver "Auspiciador creado con éxito."

Escenario: Editar Auspiciador
  Dado que existe un auspiciador
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Auspiciador"
  Y hago click en "Editar"
  Y lleno "Nombre" con "Nuevo auspiciador"
  Y lleno "Descripcion" con "Descripcion"
  Y uso la imagen "imagen_auspiciador2.jpg"
  Cuando presiono "Guardar"
  Entonces debería ver "El auspiciador ha sido editado."

Escenario: Eliminar Auspiciador
  Dado que existe un auspiciador
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Auspiciador"
  Y hago click en "Eliminar"
  Entonces debería ver "El auspiciador ha sido eliminado."

Esquema del escenario: los auspiciadores pueden verse en la página de inicio
  Dado que existe el auspiciador "<imagen>" con nombre "<nombre>" con descripcion "<descripcion>" con link "<link>"
  Y que estoy en la página inicial
  Entonces debería ver la imagen "<imagen>"

  Ejemplos:
    | imagen                  | nombre        | descripcion   | link   |
    | imagen_auspiciador1.jpg | auspiciador 1 | descripcion 1 | link 1 |
    | imagen_auspiciador2.jpg | auspiciador 2 | descripcion 2 | link 2 |
