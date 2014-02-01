class AddFiletypeToPapclip < ActiveRecord::Migration
  def change
    add_column :papclips, :files_content_type, :string
  end
end
