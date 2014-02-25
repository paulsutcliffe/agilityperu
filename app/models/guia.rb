class Guia < ActiveRecord::Base

  belongs_to :dupla
  validates :nombre, presence: true
  validates :apellido, presence: true
  validates :direccion, presence: true
  validates :telefono, presence: true
  validates :email, presence: true
end
