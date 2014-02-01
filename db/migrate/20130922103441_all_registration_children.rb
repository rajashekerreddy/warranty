class AllRegistrationChildren < ActiveRecord::Migration
def change
    create_table :all_registration_children do |t|
  t.integer :all_registration_id
  t.string :status
  t.integer :year
      t.integer :group
      t.integer :semester
      t.string :batch

      t.timestamps
    end
  end
end
