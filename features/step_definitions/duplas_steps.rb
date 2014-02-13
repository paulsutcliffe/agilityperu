Cuando(/^selecciono "(.*?)" con "(.*?)"$/) do |valor, campo|
  select(campo, {:from => valor})
end

Cuando(/^en "(.*?)" elijo "(.*?)"$/) do |label, valor|
  choose(valor)
end

Cuando(/^en "(.*?)" marco "(.*?)"$/) do |label, valor|
  valor.split(", ").each do |value|
    check(value)
  end
end

Cuando(/^agrego la fotografia "(.*?)"$/) do |archivo|
  attach_file("Fotografia", File.expand_path("features/support/" + archivo))
end

Cuando(/^lleno el formulario con los datos del guia$/) do
  fill_in "Nombre", with: "adriel"
  fill_in "Apellido", with: "pinzás"
  fill_in "Dirección", with: "Salamanca"
  fill_in "Telefono", with: "12345678"
  fill_in "email", with: "adriel@kosmyka.com"
end

Dado(/^que existe una dupla$/) do
  Dupla.create(nombre: "Luna",
               pais: "argentina",
               registro_genealogico: "12345",
               raza: "Doberman",
               color: "Negro",
               sexo: "Hembra",
               categoria: "Large",
               grado: "G3",
               tatuaje_microchip: "Tatuaje",
               especial_g1: "Especial g1",
               open_ac: "open ac",
               ac_oficial: "ac oficial",
               fotografia: File.new("features/support/fotografia3.jpg"),
               usuario_id: 1).save!
  Guia.create(nombre: "adriel",
              apellido: "pinzas",
              direccion: "salamanza",
              telefono: "12345678",
              email: "adriel@kosmyka.com",
              dupla_id: 1).save!
end
