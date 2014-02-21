class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :duplas

  validates :nombre, presence: true
  validates :apellido, presence: true
  validates :direccion, presence: true
  validates :telefono, presence: true
  validates :ciudad, presence: true
end
