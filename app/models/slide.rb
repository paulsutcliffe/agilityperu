class Slide < ActiveRecord::Base
  mount_uploader :imagen, SlideUploader
end
