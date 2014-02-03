class Noticia < ActiveRecord::Base
  mount_uploader :foto, FotoUploader
end
