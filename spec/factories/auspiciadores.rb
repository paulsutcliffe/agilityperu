# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :auspiciador do
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','imagen_auspiciador1.jpg'))}
    nombre { Faker::Name.name}
    descripcion { Faker::Lorem.paragraph }
    link { Faker::Internet.url }
  end
end
