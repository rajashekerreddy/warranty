class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :year_id
      t.string :group

      t.timestamps
    end
  end
end
