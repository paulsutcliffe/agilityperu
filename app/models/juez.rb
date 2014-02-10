class Juez < ActiveRecord::Base
  mount_uploader :foto, FotografiaUploader
end
