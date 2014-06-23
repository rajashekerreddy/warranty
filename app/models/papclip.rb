require 'paperclip'
class Papclip < ActiveRecord::Base
  attr_accessible :files
puts "sai rammmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm"
Resque.enqueue(Sleeper, 5)
  has_attached_file :files, :styles => { :small => "150x150>" },
                  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

# validates_attachment_presence :files
# validates_attachment_size :files, :less_than => 5.megabytes
# validates_attachment_content_type :files, :content_type => ['image/jpeg', 'image/png']
def to_jq_upload
{
  "name" => self.files_file_name,
  "size" => self.files_file_size,
  "url" => self.files.url,
  "thumbnail_url" => self.files.url(:original),
}
end
end
