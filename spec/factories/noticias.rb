# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :noticia do
    titulo "MyString"
    foto "MyString"
    fecha "2014-02-03"
    contenido "MyText"
  end
end
