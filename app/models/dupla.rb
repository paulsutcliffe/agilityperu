class Dupla < ActiveRecord::Base
  mount_uploader :fotografia, FotografiaUploader

  belongs_to :usuario
  has_many :guias
  accepts_nested_attributes_for :guias

  acts_as_taggable

  before_save :override_tag

  def override_tag
    self.tag_list << self.pais
  end
end
