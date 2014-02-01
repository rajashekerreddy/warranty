class AddFilesizeToPapclip < ActiveRecord::Migration
  def change
    add_column :papclips, :files_file_size, :string
  end
end
