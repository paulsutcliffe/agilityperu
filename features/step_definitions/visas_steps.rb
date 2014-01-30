Cuando(/^lleno el formulario con los datos de la visa$/) do
  fill_in "Titulo", with: "America"
  attach_file("Imagen", File.expand_path("features/support/imagen_visa1.jpg"))
end

Dado(/^que existe una visa$/) do
  Visa.create(titulo: "America",
              imagen: File.new(("features/support/imagen_visa1.jpg"))).save!
end
