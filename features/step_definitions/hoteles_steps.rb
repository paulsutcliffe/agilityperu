Cuando(/^lleno el formulario con los datos del hotel$/) do
  fill_in "Nombre", with: "Miraflores Colon Hotel"
  fill_in "Descripcion", with: "reservas"
  fill_in "Email", with: "reservas@miraflorescolonhotel.com"
  fill_in "Website", with: "www.miraflorescolonhotel.com"
end

Dado(/^que existe un hotel$/) do
  Hotel.create(nombre: "Miraflores Colon Hotel",
               descripcion: "reservas",
               email: "reservas@miraflorescolonnhotel.com",
               website: "www.miraflorescolonholte.com").save!
end

