require 'csv'

class Dupla < ActiveRecord::Base

  default_scope  { order("created_at DESC") }

  mount_uploader :fotografia, FotografiaUploader

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |dupla|
        csv << dupla.attributes.values_at(*column_names)
      end
    end
  end
  belongs_to :usuario
  has_many :guias
  accepts_nested_attributes_for :guias

  acts_as_taggable

  before_save :override_tag

  def override_tag
    self.tag_list << self.pais
  end
  validates :nombre, presence: true
  validates :registro_genealogico, presence: true
  validates :raza, presence: true
  validates :color, presence: true
  validates :categoria, presence: true
  validates :grado, presence: true
  validates :fotografia, presence: true



end
