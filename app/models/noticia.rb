class Noticia < ActiveRecord::Base
  mount_uploader :foto, FotoUploader

  def noticia_anterior
    self.class.first(:conditions => ["titulo < ?", titulo], :order => "titulo desc")
  end

  def siguiente_noticia
    self.class.first(:conditions => ["titulo > ?", titulo], :order => "titulo asc")
  end
end
