class Pclip < ActiveRecord::Base
  attr_accessible :files, :size1
  has_attached_file :files,
                  :url  => "/images/assets/template/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/images/assets/template/:id/:style/:basename.:extension"
validates_attachment_presence :files
validates_attachment_size :files, :less_than => 5.megabytes
end
