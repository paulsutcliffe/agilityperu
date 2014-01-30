Cuando(/^lleno el formulario con los datos del transporte$/) do
  fill_in "Nombre", with: "Taxi Remisse Panaka"
  fill_in "Descripcion", with: "reservas"
  fill_in "Email", with: "informes@panakaperu.com"
  fill_in "Website", with: "www.panakaperu.com"
end

Dado(/^que existe un transporte$/) do
  Transporte.create(nombre: "Taxi Remisse Panaka",
                    descripcion: "reservas",
                    email: "informes@panakaperu.com",
                    website: "www.panakaperu.com").save!
end
