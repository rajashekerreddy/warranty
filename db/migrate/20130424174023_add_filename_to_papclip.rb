class AddFilenameToPapclip < ActiveRecord::Migration
  def change
    add_column :papclips, :files_file_name, :string
  end
end
