# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usuario do
    nombre "adriel"
    apellido "pinzas"
    telefono "12345678"
    direccion "salamanca"
    ciudad "Lima"
    pais "Peru"
    email "email@domain.com"
    password "12345678"
    password_confirmation "12345678"
  end
end
