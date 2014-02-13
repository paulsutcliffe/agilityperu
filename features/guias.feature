#language: es

Característica: Administrar los guias de las duplas
  
Escenario: Editar Guia
  Dado que existe una dupla
  Y que he iniciado sesión como usuario
  Y que estoy en la página inicial
  Cuando hago click en "Mis Duplas"
  Y hago click en "Editar Guias"
  Y lleno "guia_nombre" con "nombre"
  Y lleno "Telefono" con "773834"
  Cuando presiono "Guardar"
  Entonces debería ver "El guia ha sido editada."
