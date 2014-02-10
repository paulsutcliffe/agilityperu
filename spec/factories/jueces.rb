# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :juez do
    foto { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','foto_juez.jpg'))}
    nombre { Faker::Name.name }
    descripcion { Faker::Lorem.paragraph }
  end
end
