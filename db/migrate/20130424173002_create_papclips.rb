class CreatePapclips < ActiveRecord::Migration
  def change
    create_table :papclips do |t|
      t.string :files
      t.string :files_file_name
      t.string :files_content_type
      t.integer :files_file_size

      t.timestamps
    end
  end
end
