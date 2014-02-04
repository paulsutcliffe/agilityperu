#language: es

Característica: Administracion del streaming en la web

Escenario: Crear Streaming
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "SEÑAL EN VIVO"
  Y hago click en "Crear Señal en Vivo"
  Y lleno el formulario con los datos del streaming
  Cuando presiono "Guardar"
  Entonces debería ver "Señal en vivo creada con éxito."

Escenario: Editar Streaming
  Dado que existe un streaming
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "SEÑAL EN VIVO"
  Y hago click en "Editar"
  Y lleno "Codigo embed" con "nuevo codigo"
  Cuando presiono "Guardar"
  Entonces debería ver "La señal en vivo ha sido editada."

Escenario: Eliminar Streaming
  Dado que existe un streaming
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "SEÑAL EN VIVO"
  Y hago click en "Eliminar"
  Entonces debería ver "La señal en vivo ha sido eliminada."
