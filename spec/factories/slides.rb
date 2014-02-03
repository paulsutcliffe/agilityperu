# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :slide do
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','imagen_slide1.jpg'))}
    titulo { Faker::Lorem.sentence }
  end
end
