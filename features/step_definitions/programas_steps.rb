Cuando(/^lleno el formulario con los datos del programa$/) do
  fill_in "Titulo", with: "Programa 1"
  fill_in "Contenido", with: "Contenido 1"
end

Dado(/^que existe un programa$/) do
  Programa.create(titulo: "programa 1",
                  contenido: "contenido 1").save!
end
