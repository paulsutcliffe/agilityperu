# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :contacto do
    titulo { Faker::Company.name}
    contenido { Faker::Lorem.paragraph }
    email { Faker::Internet.email }
    website { Faker::Internet.url }
  end
end
