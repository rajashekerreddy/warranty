class CreateMoveClassChildren < ActiveRecord::Migration
  def change
    create_table :move_class_children do |t|
      t.integer :all_registration_id
      t.string :status

      t.timestamps
    end
  end
end

