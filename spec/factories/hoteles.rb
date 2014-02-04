# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :hotel do
    nombre { Faker::Company.name}
    descripcion { Faker::Lorem.paragraph }
    email { Faker::Internet.email }
    website { Faker::Internet.url }
  end
end
