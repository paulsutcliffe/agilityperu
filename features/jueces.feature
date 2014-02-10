#language: es

Característica: Administracion de los datos del juez en la web

Escenario: Crear Juez
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "foto_noticia1.jpg"
  Y hago click en "Crear Juez"
  Y lleno el formulario con los datos del juez
  Cuando presiono "Guardar"
  Entonces debería ver "Juez creado con éxito."

Escenario: Editar Juez
  Dado que existe un juez
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "foto_noticia1.jpg"
  Y hago click en "Editar"
  Y lleno "Nombre" con "nombre"
  Y lleno "Descripción" con "Descripcion"
  Cuando presiono "Guardar"
  Entonces debería ver "El juez ha sido editado."

Escenario: Eliminar Juez
  Dado que existe un reglamento
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "foto_noticia1.jpg"
  Y hago click en "Eliminar"
  Entonces debería ver "El juez ha sido eliminado."
