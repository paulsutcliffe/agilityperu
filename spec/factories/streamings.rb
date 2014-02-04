# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :streaming do
    codigo_embed { Faker::Internet.url }
  end
end
