#language: es

Característica: Administracion de los contactos en la web

Escenario: Crear Contacto
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Img contacto"
  Y hago click en "Crear Contacto"
  Y lleno el formulario con los datos del contacto
  Cuando presiono "Guardar"
  Entonces debería ver "Contacto creado con éxito."

Escenario: Editar Contacto
  Dado que existe un contacto
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Img contacto"
  Y hago click en "Editar"
  Y lleno "Titulo" con "Nueva contacto"
  Y lleno "Contenido" con "Contenido"
  Cuando presiono "Guardar"
  Entonces debería ver "El contacto ha sido editado."

Escenario: Eliminar Contacto
  Dado que existe un contacto
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Img contacto"
  Y hago click en "Eliminar"
  Entonces debería ver "El contacto ha sido eliminado."
