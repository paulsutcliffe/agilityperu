Cuando(/^lleno el formulario con los datos del juez$/) do
  attach_file("Foto", File.expand_path("features/support/foto_juez.jpg"))
  fill_in "Nombre", with: "nombre"
  fill_in "Descripción", with: "descripcion"
end

Dado(/^que existe un juez$/) do
  Juez.create(foto: File.new("features/support/foto_juez.jpg"),
              nombre: "nombre",
              descripcion: "descripcion").save!
end
