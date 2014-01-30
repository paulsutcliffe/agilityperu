#language: es

Característica: Administracion de los noticias en la web

Escenario: Crear Noticia
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Noticias"
  Y hago click en "Crear noticia"
  Y lleno el formulario con los datos de la noticia
  Cuando presiono "Guardar"
  Entonces debería ver "Noticia creado con éxito."

Escenario: Editar Noticia
  Dado que existe una noticia
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Noticia"
  Y hago click en "Editar"
  Y lleno "titulo" con "Nueva noticia"
  Y lleno "Contenido" con "Contenido"
  Y uso la foto "foto_noticia2.jpg"
  Cuando presiono "Guardar"
  Entonces debería ver "La noticia ha sido editado."

Escenario: Eliminar Noticia
  Dado que existe una noticia
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Noticia"
  Y hago click en "Eliminar"
  Entonces debería ver "La noticia ha sido eliminado."
