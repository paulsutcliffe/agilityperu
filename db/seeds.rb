require 'factory_girl'

require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

DatabaseCleaner.clean

FactoryGirl.create :admin

3.times do
  FactoryGirl.create :slide
end

12.times do
  FactoryGirl.create :auspiciador
end

12.times do
  FactoryGirl.create :mensaje
end

8.times do
  FactoryGirl.create :noticia
end

8.times do
  FactoryGirl.create :visa
end

8.times do
  FactoryGirl.create :hotel
end

8.times do
  FactoryGirl.create :transporte
end

8.times do
  FactoryGirl.create :requisito
end

5.times do
  FactoryGirl.create :streaming
end

5.times do
  FactoryGirl.create :contacto
end
