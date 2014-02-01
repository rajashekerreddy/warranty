class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.integer :group_id
      t.string :category_id
      t.string :semester

      t.timestamps
    end
  end
end
