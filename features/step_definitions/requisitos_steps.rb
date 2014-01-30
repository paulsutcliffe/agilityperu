Cuando(/^lleno el formulario con los datos de requisito$/) do
  fill_in "Pais", with: "pais"
  fill_in "Contenido", with: "contenido"
end

Dado(/^que existe un requisito$/) do
  Requisito.create(pais: "pais",
                   contenido: "contenido").save!
end
