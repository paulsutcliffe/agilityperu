#language: es

Característica: Administracion duplas en la web

Esquema del escenario: Crear una dupla
  Dado que he iniciado sesión como usuario
  Y que estoy en la página inicial
  Cuando hago click en "Mis Duplas"
  Y hago click en "Crear Dupla"
  Y lleno "Nombre" con "<nombre>"
  Y selecciono "Pais" con "<pais>"
  Y lleno "Número de Registro Genealógico" con "<registro_genealogico>"
  Y lleno "Raza" con "<raza>"
  Y lleno "Color" con "<color>"
  Y en "Sexo" elijo "<sexo>"
  Y lleno "Fecha" con "<fecha>"
  Y en "Categoria" elijo "<categoria>"
  Y en "Grado" elijo "<grado>"
  Y lleno "Tatuaje/Microchip" con "<tatuaje/microchip>"
  Y en "Prueba" marco "<prueba>"
  Y agrego la fotografia "<fotografia>"
  Y lleno el formulario con los datos del guia
  Y presiono "Guardar"
  Entonces debería ver "<mensaje>"

  Ejemplos:
      | nombre    | pais      | registro_genealogico | raza        | color    | sexo       | fecha      | categoria | grado | tatuaje/microchip | prueba      | fotografia      | mensaje                    |
      | solar     | argentina | 12345                | doberman    | negro    | macho      | 01-01-2012 | large     | G2    | tatuaje           | Open A&C    | fotografia1.jpg | Se ha Creado Exitosamente. |
      | luna      | peru      | 54321                | dalmata     | blanco   | hembra     | 01-02-2011 | small     | G1    | microchip         | Especial G1 | fotografia2.jpg | Se ha Creado Exitosamente. |

Escenario: Editar Duplas
  Dado que existe una dupla
  Y que he iniciado sesión como usuario
  Y que estoy en la página inicial
  Cuando hago click en "Mis Duplas"
  Y hago click en "Editar"
  Y lleno "Nombre" con "Nueva dupla"
  Y lleno "Raza" con "Raza"
  Cuando presiono "Guardar"
  Entonces debería ver "La dupla ha sido editada."

Escenario: Eliminar
  Dado que existe una dupla
  Y que he iniciado sesión como usuario
  Y que estoy en la página inicial
  Cuando hago click en "Mis Duplas"
  Y hago click en "Eliminar"
  Entonces debería ver "La dupla ha sido eliminada."

