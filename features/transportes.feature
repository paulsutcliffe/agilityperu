#language: es

Característica: Administracion de los transportes en la web

Escenario: Crear Transporte
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Transportes"
  Y hago click en "Crear Trasporte"
  Y lleno el formulario con los datos del transporte
  Cuando presiono "Guardar"
  Entonces debería ver "Transporte creado con éxito."

Escenario: Editar Transporte
  Dado que existe un transporte
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Transportes"
  Y hago click en "Editar"
  Y lleno "Nombre" con "Nuevo Transporte"
  Y lleno "Descripcion" con "Transporte"
  Cuando presiono "Guardar"
  Entonces debería ver "El Transporte ha sido editado."

Escenario: Eliminar Transporte
  Dado que existe un transporte
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Transportes"
  Y hago click en "Eliminar"
  Entonces debería ver "El transporte ha sido eliminado."
