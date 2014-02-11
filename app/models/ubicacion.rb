class Ubicacion < ActiveRecord::Base
  mount_uploader :imagen1, FotografiaUploader
  mount_uploader :imagen2, FotografiaUploader
  mount_uploader :imagen3, FotografiaUploader
end
