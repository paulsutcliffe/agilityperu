# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :ubicacion do
    lugar { Faker::Lorem.sentence }
    direccion { Faker::Lorem.sentence }
    descripcion { Faker::Lorem.paragraph }
    lat 1.5
    lng 1.5
    imagen1 { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','foto_noticia1.jpg'))}
    imagen2 { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','foto_noticia1.jpg'))}
    imagen3 { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','foto_noticia1.jpg'))}
  end
end
