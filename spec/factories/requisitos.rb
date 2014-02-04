# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :requisito do
    pais { Faker::Address.country }
    contenido { Faker::Lorem.paragraph }
  end
end
