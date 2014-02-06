class Dupla < ActiveRecord::Base
  mount_uploader :fotografia, FotografiaUploader

  belongs_to :usuario
end
