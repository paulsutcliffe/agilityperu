#language: es

Característica: Administracion de los auspiciadores en la web

Escenario: Crear Auspiciador
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Auspiciadores"
  Y hago click en "Crear Auspiciador"
  Y lleno el formulario con los datos del auspiciador
  Cuando presiono "Guardar"
  Entonces debería ver "Auspiciador creado con éxito."

Escenario: Editar Auspiciador
  Dado que existe un auspiciador
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Auspiciadores"
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
  Cuando hago click en "Auspiciadores"
  Y hago click en "Eliminar"
  Entonces debería ver "El auspiciador ha sido eliminado."
