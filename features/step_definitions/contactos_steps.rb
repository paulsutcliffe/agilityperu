Cuando(/^lleno el formulario con los datos del contacto$/) do
  fill_in "Titulo", with: "Inscripciones y transferencias:"
  fill_in "Contenido", with: "contenido"
  fill_in "Email", with: " info@kcp.com.pe"
  fill_in "Website", with: "consultas@kcp.com.pe"
end

Dado(/^que existe un contacto$/) do
  Contacto.create(titulo: "Inscripciones y transferencias",
                  contenido: "contenido",
                  email: "info@kcp.com.pe",
                  website: "consultas@kcp.com.pe").save!
end
