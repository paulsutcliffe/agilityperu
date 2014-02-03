Cuando(/^lleno el formulario con los datos del auspiciador$/) do
  attach_file("Imagen", File.expand_path("features/support/imagen_auspiciador1.jpg"))
  fill_in "Nombre", with: "Zitio Publicidad"
  fill_in "Descripcion", with: "Agradecemos a la Sra. Rose Marie Toth, por todo el apoyo y coordinaciones para la realización de este evento."
  fill_in "Link", with: "Link"
end

Dado(/^que existe un auspiciador$/) do
  Auspiciador.create(imagen: File.new("features/support/imagen_auspiciador1.jpg"),
                     nombre: "Zitio Publiciadad",
                     descripcion: "Agradecemos a la Sra. Rose Marie Toth, por todo el apoyo y coordinaciones para la realización de este evento.",
                     link: "link").save!
end

Dado(/^que existe el auspiciador "(.*?)" con nombre "(.*?)" con descripcion "(.*?)"$/) do |imagen, nombre, descripcion|
  Auspiciador.create(imagen: File.new("features/support/#{imagen}"),
                     nombre: nombre,
                     descripcion: descripcion).save!
end

