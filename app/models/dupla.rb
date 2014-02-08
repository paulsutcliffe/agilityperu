class Dupla < ActiveRecord::Base
  mount_uploader :fotografia, FotografiaUploader

  belongs_to :usuario
  has_many :guias
  accepts_nested_attributes_for :guias
end
