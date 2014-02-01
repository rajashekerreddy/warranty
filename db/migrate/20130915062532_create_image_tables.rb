class CreateImageTables < ActiveRecord::Migration
  def change
    create_table :image_tables do |t|
      t.integer :parent_id
      t.string :files_file_name
      t.string :files_content_type
      t.integer :files_file_size
      t.datetime :files_updated_at

      t.timestamps
    end
  end
end
