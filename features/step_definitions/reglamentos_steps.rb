Cuando(/^lleno el formulario con los datos del reglamento$/) do
  fill_in "Titulo", with: "titulo"
  fill_in "Contenido", with: "Contenido"
end

Dado(/^que existe un reglamento$/) do
  Reglamento.create(titulo: "titulo",
                    contenido: "Contenido").save!
end
