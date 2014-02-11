class Noticia < ActiveRecord::Base
  mount_uploader :foto, FotoUploader

  def noticia_anterior
    self.class.first(:conditions => ["id < ?", id], :order => "id desc")
  end

  def siguiente_noticia
    self.class.first(:conditions => ["id > ?", id], :order => "id asc")
  end
end
