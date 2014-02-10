#language: es
@javascript
Característica: Administracion de los noticias en la web

Escenario: Crear Noticia
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "NOTICIAS"
  Y hago click en "Crear Noticia"
  Y lleno el formulario con los datos de la noticia
  Cuando presiono "Guardar"
  Entonces debería ver "Noticia creada con éxito."

Escenario: Editar Noticia
  Dado que existe una noticia
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "NOTICIAS"
  Y hago click en "Editar"
  Y lleno "Titulo" con "Nueva noticia"
  Y lleno "Contenido" con "Contenido"
  Y uso la foto "foto_noticia2.jpg"
  Cuando presiono "Guardar"
  Entonces debería ver "La noticia ha sido editada."

Escenario: Eliminar Noticia
  Dado que existe una noticia
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "NOTICIAS"
  Y hago click en "Eliminar"
  Cuando hago click en "accept" en la alerta "¿Estás Seguro?"
  Entonces debería ver "La noticia ha sido eliminada."

Esquema del escenario: las noticias pueden verse en la página de inicio
  Dado que existe la noticia "<foto>" con título "<titulo>" con fecha "<fecha>" con contenido "<contenido>"
  Y que estoy en la página inicial
  Entonces debería ver la imagen "<foto>"

  Ejemplos:
    | foto              | titulo    | fecha      | contenido   |
    | foto_noticia1.jpg | noticia 1 | 03-02-2014 | contenido 1 |
    | foto_noticia2.jpg | noticia 2 | 03-02-2014 | contenido 2 |
