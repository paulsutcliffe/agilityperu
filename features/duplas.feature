#language: es

Característica: Administracion duplas en la web

Esquema del escenario: Crear una dupla
  Dado que he iniciado sesión como usuario
  Y que estoy en la página inicial
  Cuando hago click en "Mis Duplas"
  Y hago click en "Inscribir una Nueva Dupla"
  Y lleno "Nombre" con "<nombre>"
  Y selecciono "Pais" con "<pais>"
  Y lleno "Registro Genealógico" con "<registro_genealogico>"
  Y lleno "Raza" con "<raza>"
  Y lleno "Color" con "<color>"
  Y en "Sexo" elijo "<sexo>"
  Y en "Categoria" elijo "<categoria>"
  Y en "Grado" elijo "<grado>"
  Y lleno "Tatuaje/Microchip" con "<tatuaje/microchip>"
  Y en "Prueba" marco "<prueba>"
  Y agrego la fotografia "<fotografia>"
  Y presiono "Guardar"
  Entonces debería ver "<mensaje>"

  Ejemplos:
      | nombre    | pais      | registro_genealogico | raza        | color    | sexo              | categoria             | grado             | tatuaje/microchip | prueba                   | fotografia      | mensaje                    |
      | solar     | Argentina | 12345                | doberman    | negro    | dupla_sexo_macho  | dupla_categoria_large | dupla_grado_g2    | tatuaje           | dupla_prueba_open_ac     | fotografia1.jpg | Se ha Creado Exitosamente. |
      | luna      | Perú      | 54321                | dalmata     | blanco   | dupla_sexo_hembra | dupla_categoria_small | dupla_grado_g1    | microchip         | dupla_prueba_especial_g1 | fotografia2.jpg | Se ha Creado Exitosamente. |

Escenario: Editar Duplas
  Dado que existe una dupla
  Y que he iniciado sesión como usuario
  Y que estoy en la página inicial
  Cuando hago click en "Mis Duplas"
  Y hago click en "Editar"
  Y lleno "dupla_nombre" con "Nueva dupla"
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

