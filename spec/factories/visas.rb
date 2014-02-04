# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :visa do
    titulo { Faker::Name.title }
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','imagen_visa2.jpg'))}
  end
end
