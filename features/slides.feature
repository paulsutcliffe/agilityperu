#language: es

Característica: administracion de los slides de la web

Escenario: Crear slide
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "SLIDE"
  Y hago click en "Crear Slide"
  Y agrego la imagen "imagen_slide1.jpg"
  Y lleno "Titulo" con "Slide 1"
  Cuando presiono "Guardar"
  Entonces debería ver "Slide creado con éxito."

Escenario: Editar slide
  Dado que existe un slide
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "SLIDE"
  Y hago click en "Editar"
  Y lleno "Titulo" con "Nuevo slide"
  Y uso la imagen "imagen_slide2.jpg"
  Cuando presiono "Guardar"
  Entonces debería ver "El slide ha sido editado."

Escenario: Eliminar slide
  Dado que existe un slide
  Y que he iniciado sesión como administrador
  Cuando hago click en "SLIDE"
  Y hago click en "Eliminar"
  Entonces debería ver "El slide ha sido eliminado."

Esquema del escenario: los slides pueden verse en la página de inicio
  Dado que exite el slide "<imagen>" con título "<titulo>"
  Y que estoy en la página inicial
  Entonces debería ver la imagen "<imagen>"
  Y debería ver "<titulo>"

  Ejemplos:
    | imagen            | titulo  |
    | imagen_slide1.jpg | slide 1 |
    | imagen_slide2.jpg | slide 2 |
    | imagen_slide3.jpg | slide 3 |
