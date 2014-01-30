#language: es

Característica: administracion de los slides de la web

Escenario: Crear slide
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Slide"
  Y hago click en "Crear Slide"
  Y lleno el formulario con los datos de slide
  Cuando presiono "Guardar"
  Entonces debería ver "Slide creado con éxito."

Escenario: Editar slide
  Dado que existe un slide
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Slide"
  Y hago click en "Editar"
  Y lleno "Titulo" con "Nuevo slide"
  Y uso la imagen "imagen_slide2.jpg"
  Cuando presiono "Guardar"
  Entonces debería ver "El slide ha sido editado."

Escenario: Eliminar slide
  Dado que existe un slide
  Y que he iniciado sesión como administrador
  Cuando hago click en "Slide"
  Y hago click en "Eliminar"
  Entonces debería ver "El slide ha sido eliminado."
