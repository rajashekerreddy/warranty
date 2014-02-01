class AddImageFromToImageTable < ActiveRecord::Migration
  def change
    add_column :image_tables, :image_from, :string
  end
end
