class CreateAttendenceChildren < ActiveRecord::Migration
  def change
    create_table :attendence_children do |t|
      t.integer :all_registration_id
      t.integer :year
      t.integer :group
      t.integer :semester
      t.integer :subject
      t.string :presence

      t.timestamps
    end
  end
end
