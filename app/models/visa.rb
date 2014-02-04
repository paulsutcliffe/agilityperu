class Visa < ActiveRecord::Base
  mount_uploader :imagen, ImagenUploader
end
