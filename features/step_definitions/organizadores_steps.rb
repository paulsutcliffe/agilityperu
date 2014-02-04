Cuando(/^lleno el formulario con los datos del organizador$/) do
  fill_in "Titulo", with: "Titulo"
  fill_in "Contenido", with: "Contenido"
end

Dado(/^que existe un organizador$/) do
  Organizador.create(titulo: "titulo",
                     contenido: "contenido").save!
end
