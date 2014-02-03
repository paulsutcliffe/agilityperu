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
