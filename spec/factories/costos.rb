# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :costo do
    titulo { Faker::Name.title }
    contenido { Faker::Lorem.paragraph }
  end
end
