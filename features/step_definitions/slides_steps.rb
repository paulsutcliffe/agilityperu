Cuando(/^lleno el formulario con los datos de slide$/) do
  fill_in "Titulo", with: "Campeonato Agility las americas"
  attach_file("Imagen", File.expand_path("features/support/imagen_slide2.jpg"))
end

Dado(/^que existe un slide$/) do
  Slide.create(titulo: "Campeonato Agility las americas",
               imagen: File.new("features/support/imagen_slide2.jpg")).save!
end

Cuando(/^lleno "(.*?)" con "(.*?)"$/) do |campo, valor|
  fill_in(campo, with: valor)
end


Cuando(/^uso la imagen "(.*?)"$/) do |archivo|
  attach_file("Imagen", File.expand_path("features/support/" + archivo))
end
