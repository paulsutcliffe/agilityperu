# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :noticia do
    titulo { Faker::Name.title}
    foto { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','foto_noticia1.jpg'))}
    fecha "2014-02-03"
    contenido { Faker::Lorem.paragraphs }
  end
end
