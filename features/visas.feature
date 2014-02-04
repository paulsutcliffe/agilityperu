#language: es

Característica: Administracion de las visas en la web

Escenario: Crear Visas
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "INFORMACIÓN"
  Y hago click en "VISAS"
  Y hago click en "Crear Visa"
  Y lleno el formulario con los datos de la visa
  Cuando presiono "Guardar"
  Entonces debería ver "Visa creada con éxito."

Escenario: Editar Visa
  Dado que existe una visa
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "INFORMACIÓN"
  Y hago click en "VISAS"
  Y hago click en "Editar"
  Y lleno "Titulo" con "Nueva Visa"
  Y uso la imagen "imagen_visa2.jpg"
  Cuando presiono "Guardar"
  Entonces debería ver "La visa ha sido editado."

Escenario: Eliminar Visa
  Dado que existe una visa
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "INFORMACIÓN"
  Y hago click en "VISAS"
  Y hago click en "Eliminar"
  Entonces debería ver "La visa ha sido eliminado."
