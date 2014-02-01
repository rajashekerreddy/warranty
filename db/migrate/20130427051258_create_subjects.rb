class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.integer :group_id
      t.integer :semester_id
      t.string :subject

      t.timestamps
    end
  end
end
