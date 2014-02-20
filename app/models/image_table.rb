require 'paperclip'
class ImageTable < ActiveRecord::Base
  belongs_to :parent, :polymorphic => true
  # belongs_to :all_registration
  attr_accessible :files_content_type, :files_file_name, :files_file_size, :files_updated_at, :parent_id, :image_from

  attr_accessible :files
#  has_attached_file :files, :styles => { :small => "150x150>" },
#                  :url  => "/assets/template/:id/:style/:basename.:extension",
#                  :path => ":rails_root/public/assets/template/:id/:style/:basename.:extension"
  has_attached_file :files,
                  :url  => "/images/assets/template/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/images/assets/template/:id/:style/:basename.:extension"
validates_attachment_presence :files
validates_attachment_size :files, :less_than => 5.megabytes
end