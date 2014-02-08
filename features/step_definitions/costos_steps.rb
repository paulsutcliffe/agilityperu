Cuando(/^lleno el formulario con los datos de costo$/) do
  fill_in "Titulo", with: "titulo"
  fill_in "Contenido", with: "Contenido"
end

Dado(/^que existe un costo$/) do
  Costo.create(titulo: "titulo",
                    contenido: "Contenido").save!
end
