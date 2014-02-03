Dado(/^lleno el formulario de contacto con los datos del mensaje$/) do
  fill_in "Nombre", with: "adriel"
  fill_in "Telefono", with: "12345678"
  fill_in "Email", with: "adriel@kosmyka.com"
  fill_in "Mensaje", with: "hola"
end

Dado(/^que existe un mensaje$/) do
  Mensaje.create(nombre: "adriel",
                 telefono: "12345678",
                 email: "adriel@kosmyka.com",
                 mensaje: "hola").save!
end
