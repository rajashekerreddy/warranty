class CreateAttendences < ActiveRecord::Migration
  def change
    create_table :attendences do |t|
      t.string :year
      t.string :group

      t.timestamps
    end
  end
end
