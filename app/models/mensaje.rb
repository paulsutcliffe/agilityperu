class Mensaje < ActiveRecord::Base

  validates :nombre, presence: true
  validates :telefono, presence: true
  validates :email, presence: true
  validates :mensaje, presence: true

end
