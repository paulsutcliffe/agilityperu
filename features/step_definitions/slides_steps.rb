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

Cuando(/^agrego la imagen "(.*?)"$/) do |archivo|
  attach_file("Imagen", File.expand_path("features/support/" + archivo))
end

Entonces(/^debería ver la imagen "(.*?)"$/) do |archivo|
  page.should have_xpath("//img[contains(@src, \"#{archivo}\")]")
end

Dado(/^que exite el slide "(.*?)" con título "(.*?)"$/) do |imagen, titulo|
  Slide.create(imagen: File.new("features/support/#{imagen}"),
               titulo: titulo).save!
end
