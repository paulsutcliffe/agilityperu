Cuando(/^lleno el formulario con los datos del streaming$/) do
  fill_in "Codigo embed", with: "codigo"
end

Dado(/^que existe un streaming$/) do
  Streaming.create(codigo_embed: "codigo").save!
end
