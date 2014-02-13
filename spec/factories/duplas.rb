# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :dupla do
    nombre { Faker::Name.name }
    pais { Faker::Address.country }
    registro_genealogico { Faker::Number.digit }
    raza { ["Dalmata", "Labrador", "Doberman"].sample }
    color "Marron"
    sexo { ["Macho", "Hembra"].sample }
    categoria {["small", "medium", "large"].sample }
    grado { ["G1", "G2", "G3"].sample }
    tatuaje_microchip { ["Tatuaje", "Microchip"].sample }
    especial_g1 {"Especial G1"}
    fotografia { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','fotografia1.jpg'))}
    fecha_nacimiento "2014-02-05"
    usuario_id 1
  end
end
