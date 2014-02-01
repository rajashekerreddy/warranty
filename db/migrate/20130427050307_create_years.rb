class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.integer :category_id
      t.string :year

      t.timestamps
    end
  end
end
