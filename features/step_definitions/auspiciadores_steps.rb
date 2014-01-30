Cuando(/^lleno el formulario con los datos del auspiciador$/) do
  attach_file("Imagen", File.expand_path("features/support/imagen_auspiciador1.jpg"))
  fill_in "Nombre", with: "Zitio Publicidad"
  fill_in "Contenido", with: "Agradecemos a la Sra. Rose Marie Toth, por todo el apoyo y coordinaciones para la realización de este evento."
end

Dado(/^que existe un auspiciador$/) do
  Auspiciador.create(imagen: File.new("features/support/imagen_auspiciador1.jpg"),
                     nombre: "Zitio Publiciadad",
                     contenido: "Agradecemos a la Sra. Rose Marie Toth, por todo el apoyo y coordinaciones para la realización de este evento.").save!
end
