Cuando(/^lleno el formulario con los datos de la noticia$/) do
  fill_in "Titulo", with: "Se CONFIRMA a los jueces del XIV CAMPEONATO DE AGILITY LAS AMERICAS Y EL CARIBE 2014"
  attach_file("Foto", File.expand_path("features/support/foto_noticia1.jpg"))
  fill_in "noticia[contenido]", with: "Se confirmar la presencia de los jueces: Josef van Eester, de Bélgica y Tamás Tráj, de Hungría."
end

Cuando(/^uso la foto "(.*?)"$/) do |archivo|
  attach_file("Foto", File.expand_path("features/support/" + archivo))
end

Dado(/^que existe una noticia$/) do
  Noticia.create(titulo: "Se CONFIRMA a los jueces del XIV CAMPEONATO DE AGILITY LAS AMERICAS Y EL CARIBE 2014",
                 foto: File.new("features/support/foto_noticia1.jpg"),
                 fecha: "20-01-2014",
                 contenido: "Se confirmar la presencia de los jueces: Josef van Eester, de Bélgica y Tamás Tráj, de Hungría.").save!
end

Dado(/^que existe la noticia "(.*?)" con título "(.*?)" con fecha "(.*?)" con contenido "(.*?)"$/) do |foto, titulo, fecha, contenido|
  Noticia.create(foto: File.new("features/support/#{foto}"),
                 titulo: titulo,
                 fecha: fecha,
                 contenido: contenido).save!
end
Cuando(/^hago click (accept|dismiss) en la alerta "(.*?)"$/) do |action, text|
  alert = page.driver.browser.switch_to.alert
  alert.text.should eq(text)
  alert.send(action)
end
