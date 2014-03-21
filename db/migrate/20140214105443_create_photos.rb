class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :content
      t.integer :photable_id
      t.string :photable_type

      t.timestamps
    end
  end
end
