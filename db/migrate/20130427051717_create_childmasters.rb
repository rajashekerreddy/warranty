class CreateChildmasters < ActiveRecord::Migration
  def change
    create_table :childmasters do |t|
      t.integer :profilemaster_id
      t.string :new
      t.string :edit
      t.string :view
      t.string :remove
      t.string :forms

      t.timestamps
    end
  end
end
